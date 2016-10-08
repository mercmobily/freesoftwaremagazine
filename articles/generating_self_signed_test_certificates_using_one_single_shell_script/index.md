---
nid: '2964'
title: 'Generating Self-Signed Test Certificates Using One Single Shell Script '
authors: 'Gong Cheng'
published: '2008-08-09 23:02:17'
tags: 'certificate,openssl'
license: verbatim_only
section: end_users
listed: 'true'

---
Looking at the title, you might say: "Not another openssl certificate generation guide!". I know, I know, but I promise that I will try to be different here.

Indeed, there are abundant resources available on how to use openssl to generate digital certificates and I have learned a lot from them. However, I don't think it is easy for all of us to memorize the complicated openssl command line syntax. A lot of times, all I need is to generate a new certificate and for that I just want to have something simple and straightforward that I can simply invoke without digging through old notes or googling for some guides.

To achieve that, I created a single shell script that is able to do three things and only three things:

* Generating self-signed root CA certificates
* Generating "client" certificate with XP client extension
* Generating "server" certificate with XP server extension

The goal here is to make it as self-contained as possible: it only requires a functional openssl (and a /bin/sh of course) installed on the system. You don't even need to know where the openssl.cnf is or modify its content because it is all dynamically generated in the script itself. You don't need to create a separate XP extension file because it is in the script too.

Another goal is to make it as simple as possible: There are only 3 commands for the 3 things it does, each achieved in one step. You just need to type in all the fields of your certs as usual by following the prompt.

Before going to the script, I must disclaim that the certificates generated this way are intended for testing purposes only (for example, testing your wifi security configurations). Use it for any other purposes at your own risk.


# The Script

Now the script itself. Due to lack of imagination, I call it certgen.

=CODE_START=
#!/bin/sh
#
# A script generates self-signed root CA cert/key and client/server certs with
# xp-extensions, using openssl.
# certs generated are for testing purposes only!
#
# Author: Gong Cheng, chengg11@yahoo.com, Aug. 2008
#
# You are free to use this script in anyway but absolutely no warranty!
#

usage ()
{
    echo "Usage:"
    echo "  certgen ca [<ca key> <ca cert>]"
    echo "  certgen client <ca key> <ca cert> [ <client key>  <client cert> ]"
    echo "  certgen server <ca key> <ca cert> [ <server key>  <server cert> ]"
}

gen_config ()
{
    echo "Generating ca_config.cnf"
    cat > ca_config.cnf <<EOT
HOME                    = .
RANDFILE                = $ENV::HOME/.rnd
[ ca ]
default_ca      = CA_default
[ CA_default ]
certs           = .
crl_dir         = .
database        = index.txt
new_certs_dir   = .
certificate     = $2
serial          = serial
private_key     = $1
RANDFILE        = .rand
x509_extensions = usr_cert
name_opt        = ca_default
cert_opt        = ca_default
default_days    = 365
default_crl_days= 30
default_md      = sha1
preserve        = no
policy          = policy_match
[ policy_match ]
countryName             = match
stateOrProvinceName     = match
organizationName        = match
organizationalUnitName  = optional
commonName              = supplied
emailAddress            = optional
[ policy_anything ]
countryName             = optional
stateOrProvinceName     = optional
localityName            = optional
organizationName        = optional
organizationalUnitName  = optional
commonName              = supplied
emailAddress            = optional
[ req ]
default_bits            = 1024
default_md              = sha1
default_keyfile         = privkey.pem
distinguished_name      = req_distinguished_name
attributes              = req_attributes
x509_extensions = v3_ca
string_mask = MASK:0x2002
[ req_distinguished_name ]
countryName                     = Country Name (2 letter code)
countryName_default             = GB
countryName_min                 = 2
countryName_max                 = 2
stateOrProvinceName             = State or Province Name (full name)
stateOrProvinceName_default     = Berkshire
localityName                    = Locality Name (eg, city)
localityName_default            = Newbury
0.organizationName              = Organization Name (eg, company)
0.organizationName_default      = My Company Ltd
organizationalUnitName          = Organizational Unit Name (eg, section)
commonName                      = Common Name (eg, your name or your server's hostname)
commonName_max                  = 64
emailAddress                    = Email Address
emailAddress_max                = 64
[ req_attributes ]
challengePassword               = A challenge password
challengePassword_min           = 4
challengePassword_max           = 20
unstructuredName                = An optional company name
[ usr_cert ]
basicConstraints=CA:FALSE
nsComment                       = "OpenSSL Generated Certificate"
subjectKeyIdentifier=hash
authorityKeyIdentifier=keyid,issuer
[ v3_req ]
basicConstraints = CA:FALSE
keyUsage = nonRepudiation, digitalSignature, keyEncipherment
[ v3_ca ]
subjectKeyIdentifier=hash
authorityKeyIdentifier=keyid:always,issuer:always
basicConstraints = CA:true
[xpclient_ext]
extendedKeyUsage = 1.3.6.1.5.5.7.3.2
[xpserver_ext]
extendedKeyUsage = 1.3.6.1.5.5.7.3.1
EOT
}

gen_ca ()
{
    echo "generating CA cert:$1, $2";
    openssl req -config ca_config.cnf -new -x509 -extensions v3_ca -days 3650 -passin pass:whatever -passout pass:whatever -keyout $1 -out $2
}

gen_client_cert ()
{
    echo "generating client cert:$1, $2";
    openssl req -config ca_config.cnf -new -nodes -keyout $1 -out temp.csr -days 3650

    openssl ca -config ca_config.cnf -policy policy_anything -out $2 -days 3650 -key whatever -extensions xpclient_ext -infiles temp.csr

    rm temp.csr
}

gen_server_cert ()
{
    echo "generating server cert:$1, $2";
    openssl req -config ca_config.cnf -new -nodes -keyout $1 -out temp.csr -days 3650

    openssl ca -config ca_config.cnf -policy policy_anything -out $2 -days 3650 -key whatever -extensions xpserver_ext -infiles temp.csr

    rm temp.csr
}

#at least one argument
if [ $# -lt 1 ]
then
    usage
    exit 1
fi


#default file names if not specified in command line
ca_key_file=cakey.pem
ca_cert_file=cacert.pem
client_key_file=client_key.pem
client_cert_file=client_cert.pem
server_key_file=server_key.pem
server_cert_file=server_cert.pem

case $1 in
ca)
    if [ x$2 != x ]
    then
        ca_key_file=$2
        ca_cert_file=$3
    fi
    gen_config $ca_key_file $ca_cert_file
    gen_ca $ca_key_file $ca_cert_file
    if [ -f $ca_key_file -a -f $ca_cert_file ]
    then
        echo "Generated files: key: $ca_key_file , cert: $ca_cert_file"
    else
        echo "Failed to generated all files"
    fi
    ;;
client)
    if [ $# -ne 3 -a $# -ne 5 ]
    then
        usage
        exit 1
    fi
    ca_key_file=$2
    ca_cert_file=$3
    gen_config $ca_key_file $ca_cert_file
    if [ x$4 != x ]
    then
        client_key_file=$4
        client_cert_file=$5
    fi
    if [ ! -f index.txt ]
    then
        touch index.txt
    fi

    if [ ! -f serial ]
    then
        echo 01 > serial
    fi
    gen_client_cert $client_key_file $client_cert_file
    if [ -f $client_key_file -a -f $client_cert_file ]
    then
        echo "Generated files: key: $client_key_file , cert: $client_cert_file"
    else
        echo "Failed to generated all files"
    fi
    if [ $client_cert_file != `cat serial.old`.pem ]
    then
        rm `cat serial.old`.pem
    fi
    ;;
server)
    if [ $# -ne 3 -a $# -ne 5 ]
    then
        usage
        exit 1
    fi
    ca_key_file=$2
    ca_cert_file=$3
    gen_config $ca_key_file $ca_cert_file
    if [ x$4 != x ]
    then
        server_key_file=$4
        server_cert_file=$5
    fi
    if [ ! -f index.txt ]
    then
        touch index.txt
    fi

    if [ ! -f serial ]
    then
        echo 01 > serial
    fi
    gen_server_cert $server_key_file $server_cert_file
    if [ -f $server_key_file -a -f $server_cert_file ]
    then
        echo "Generated files: key: $server_key_file , cert: $server_cert_file"
    else
        echo "Failed to generated all files"
    fi
    if [ $server_cert_file != `cat serial.old`.pem ]
    then
        rm `cat serial.old`.pem
    fi
    ;;
*) usage; exit 1;;
esac



#cleanups
rm ca_config.cnf
=CODE_END=

# How To Use It?

Easy. Invoke certgen without any parameter, it gives you the usage:

=CODE_START=
$ ./certgen
Usage:
  certgen ca [<ca key> <ca cert>]
  certgen client <ca key> <ca cert> [ <client key>  <client cert> ]
  certgen server <ca key> <ca cert> [ <server key>  <server cert> ]
=CODE_END=

The generated file names are optional. If you don't specify them, the default file names generated are:

* cacert.pem, the root CA certificate
* cakey.pem, the root CA private key file, pass phrase "whatever"
* client_cert.pem, the client certificate
* client_key.pem, the client private key, pass phrase your choice
* server_cert.pem, the server certificate
* server_key.pem, the server private key, pass phrase your choice

Here is a sample run that should explain everything:


=CODE_START=
cheng@gong-ubuntu:~/tmp/certs$ ls
gcheng@gong-ubuntu:~/tmp/certs$ /home/gcheng/src/mine/cert/certgen ca mycakey.pem mycacert.pem
Generating ca_config.cnf
generating CA cert:mycakey.pem, mycacert.pem
Generating a 1024 bit RSA private key
.........++++++
.................++++++
unable to write 'random state'
writing new private key to 'mycakey.pem'
-----
You are about to be asked to enter information that will be incorporated
into your certificate request.
What you are about to enter is what is called a Distinguished Name or a DN.
There are quite a few fields but you can leave some blank
For some fields there will be a default value,
If you enter '.', the field will be left blank.
-----
Country Name (2 letter code) [GB]:US
State or Province Name (full name) [Berkshire]:California
Locality Name (eg, city) [Newbury]:San Jose
Organization Name (eg, company) [My Company Ltd]:test.com
Organizational Unit Name (eg, section) []:eng
Common Name (eg, your name or your servers hostname) []:eng root CA
Email Address []:eng_ca@test.com
Generated files: key: mycakey.pem , cert: mycacert.pem
gcheng@gong-ubuntu:~/tmp/certs$ ls
mycacert.pem  mycakey.pem
gcheng@gong-ubuntu:~/tmp/certs$ /home/gcheng/src/mine/cert/certgen client mycakey.pem mycacert.pem myclientkey.pem myclientcert.pem
Generating ca_config.cnf
generating client cert:myclientkey.pem, myclientcert.pem
Generating a 1024 bit RSA private key
.........................++++++
....................................................................++++++
unable to write 'random state'
writing new private key to 'myclientkey.pem'
-----
You are about to be asked to enter information that will be incorporated
into your certificate request.
What you are about to enter is what is called a Distinguished Name or a DN.
There are quite a few fields but you can leave some blank
For some fields there will be a default value,
If you enter '.', the field will be left blank.
-----
Country Name (2 letter code) [GB]:US
State or Province Name (full name) [Berkshire]:California
Locality Name (eg, city) [Newbury]:San Jose
Organization Name (eg, company) [My Company Ltd]:test.com
Organizational Unit Name (eg, section) []:eng
Common Name (eg, your name or your servers hostname) []:eng test client
Email Address []:eng_client@test.com

Please enter the following 'extra' attributes
to be sent with your certificate request
A challenge password []:whatever
An optional company name []:test.com
Using configuration from ca_config.cnf
Check that the request matches the signature
Signature ok
Certificate Details:
        Serial Number: 1 (0x1)
        Validity
            Not Before: Aug  7 19:51:58 2008 GMT
            Not After : Aug  5 19:51:58 2018 GMT
        Subject:
            countryName               = US
            stateOrProvinceName       = California
            localityName              = San Jose
            organizationName          = test.com
            organizationalUnitName    = eng
            commonName                = eng test client
            emailAddress              = eng_client@test.com
        X509v3 extensions:
            X509v3 Extended Key Usage:
                TLS Web Client Authentication
Certificate is to be certified until Aug  5 19:51:58 2018 GMT (3650 days)
Sign the certificate? [y/n]:y


1 out of 1 certificate requests certified, commit? [y/n]y
Write out database with 1 new entries
Data Base Updated
unable to write 'random state'
Generated files: key: myclientkey.pem , cert: myclientcert.pem
gcheng@gong-ubuntu:~/tmp/certs$ ls
index.txt       index.txt.old  mycakey.pem       myclientkey.pem  serial.old
index.txt.attr  mycacert.pem   myclientcert.pem  serial
gcheng@gong-ubuntu:~/tmp/certs$ /home/gcheng/src/mine/cert/certgen server mycakey.pem mycacert.pem myserverkey.pem myservercert.pem
Generating ca_config.cnf
generating server cert:myserverkey.pem, myservercert.pem
Generating a 1024 bit RSA private key
...........................++++++
........................................++++++
unable to write 'random state'
writing new private key to 'myserverkey.pem'
-----
You are about to be asked to enter information that will be incorporated
into your certificate request.
What you are about to enter is what is called a Distinguished Name or a DN.
There are quite a few fields but you can leave some blank
For some fields there will be a default value,
If you enter '.', the field will be left blank.
-----
Country Name (2 letter code) [GB]:US
State or Province Name (full name) [Berkshire]:California
Locality Name (eg, city) [Newbury]:San Jose
Organization Name (eg, company) [My Company Ltd]:test.com
Organizational Unit Name (eg, section) []:eng
Common Name (eg, your name or your servers hostname) []:eng test server
Email Address []:eng_server@test.com

Please enter the following 'extra' attributes
to be sent with your certificate request
A challenge password []:whatever
An optional company name []:test.com
Using configuration from ca_config.cnf
Check that the request matches the signature
Signature ok
Certificate Details:
        Serial Number: 2 (0x2)
        Validity
            Not Before: Aug  7 19:53:17 2008 GMT
            Not After : Aug  5 19:53:17 2018 GMT
        Subject:
            countryName               = US
            stateOrProvinceName       = California
            localityName              = San Jose
            organizationName          = test.com
            organizationalUnitName    = eng
            commonName                = eng test server
            emailAddress              = eng_server@test.com
        X509v3 extensions:
            X509v3 Extended Key Usage:
                TLS Web Server Authentication
Certificate is to be certified until Aug  5 19:53:17 2018 GMT (3650 days)
Sign the certificate? [y/n]:y


1 out of 1 certificate requests certified, commit? [y/n]y
Write out database with 1 new entries
Data Base Updated
unable to write 'random state'
Generated files: key: myserverkey.pem , cert: myservercert.pem
gcheng@gong-ubuntu:~/tmp/certs$ ls
index.txt           index.txt.old  myclientcert.pem  myserverkey.pem
index.txt.attr      mycacert.pem   myclientkey.pem   serial
index.txt.attr.old  mycakey.pem    myservercert.pem  serial.old
=CODE_END=


# Verification of the Certificates

You can use openssl to verify the validity of the certs and print the contents of the fields too. See below:

=CODE_START=
gcheng@gong-ubuntu:~/tmp/certs$ openssl verify -CAfile mycacert.pem myclientcert.pem myservercert.pem
myclientcert.pem: OK
myservercert.pem: OK
gcheng@gong-ubuntu:~/tmp/certs$ openssl x509 -text -in mycacert.pem
Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number:
            f2:ed:cf:36:05:b2:91:31
        Signature Algorithm: sha1WithRSAEncryption
        Issuer: C=US, ST=California, L=San Jose, O=test.com, OU=eng, CN=eng root CA/emailAddress=eng_ca@test.com
        Validity
            Not Before: Aug  7 19:50:15 2008 GMT
            Not After : Aug  5 19:50:15 2018 GMT
        Subject: C=US, ST=California, L=San Jose, O=test.com, OU=eng, CN=eng root CA/emailAddress=eng_ca@test.com
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
            RSA Public Key: (1024 bit)
                Modulus (1024 bit):
                    00:c5:f3:d7:ad:18:ca:07:0e:1d:4a:19:52:e3:ab:
                    93:6f:dd:dd:74:1a:4b:c4:9d:57:8c:60:ec:db:bc:
                    53:b8:94:27:41:78:2b:07:56:9b:66:0b:25:a7:37:
                    13:90:ee:63:2f:8f:5a:6d:a6:f2:a1:fd:ce:28:b3:
                    d1:cb:35:1a:00:cb:7e:5a:f8:a3:44:4b:bc:75:63:
                    f4:04:2e:95:4e:6a:2a:16:27:ca:1d:b1:85:ce:79:
                    53:dd:32:a1:fb:02:25:fe:d1:79:68:51:9c:d1:b6:
                    bc:c2:dc:21:33:32:88:97:07:10:d6:52:65:84:1a:

                    d3:e5:fb:a5:de:2a:05:14:d9
                Exponent: 65537 (0x10001)
        X509v3 extensions:
            X509v3 Subject Key Identifier:
                7C:00:6A:A9:AB:52:C8:CE:39:65:1B:AF:7C:CF:13:E4:6E:2E:D4:72
            X509v3 Authority Key Identifier:
                keyid:7C:00:6A:A9:AB:52:C8:CE:39:65:1B:AF:7C:CF:13:E4:6E:2E:D4:72
                DirName:/C=US/ST=California/L=San Jose/O=test.com/OU=eng/CN=eng root CA/emailAddress=eng_ca@test.com
                serial:F2:ED:CF:36:05:B2:91:31

            X509v3 Basic Constraints:
                CA:TRUE
    Signature Algorithm: sha1WithRSAEncryption
        9b:30:4f:61:bd:b1:d9:0b:a0:56:b8:77:5a:08:e6:d2:a6:80:
        13:0b:aa:2d:f5:1e:d1:5f:4e:b2:59:9a:ad:d3:b3:a2:11:8e:
        a1:51:e5:6b:f3:d4:b1:94:d3:9a:ba:43:04:d9:48:dc:d1:c2:
        e9:25:27:81:44:54:1f:bc:7f:2e:44:26:2f:f2:7e:46:ad:26:
        f3:21:47:1b:20:9b:50:61:f7:ae:41:54:8d:e6:41:72:77:4d:
        d0:29:2a:16:56:2a:df:f0:f9:19:2c:19:e6:1d:67:a7:ed:d7:
        6a:49:66:9a:d4:25:1d:36:0f:0a:89:f1:b5:e5:5c:63:e1:c3:
        d5:b3
-----BEGIN CERTIFICATE-----
MIIDjTCCAvagAwIBAgIJAPLtzzYFspExMA0GCSqGSIb3DQEBBQUAMIGMMQswCQYD
VQQGEwJVUzETMBEGA1UECBMKQ2FsaWZvcm5pYTERMA8GA1UEBxMIU2FuIEpvc2Ux
ETAPBgNVBAoTCHRlc3QuY29tMQwwCgYDVQQLEwNlbmcxFDASBgNVBAMTC2VuZyBy
b290IENBMR4wHAYJKoZIhvcNAQkBFg9lbmdfY2FAdGVzdC5jb20wHhcNMDgwODA3
MTk1MDE1WhcNMTgwODA1MTk1MDE1WjCBjDELMAkGA1UEBhMCVVMxEzARBgNVBAgT
CkNhbGlmb3JuaWExETAPBgNVBAcTCFNhbiBKb3NlMREwDwYDVQQKEwh0ZXN0LmNv
bTEMMAoGA1UECxMDZW5nMRQwEgYDVQQDEwtlbmcgcm9vdCBDQTEeMBwGCSqGSIb3
DQEJARYPZW5nX2NhQHRlc3QuY29tMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKB
gQDF89etGMoHDh1KGVLjq5Nv3d10GkvEnVeMYOzbvFO4lCdBeCsHVptmCyWnNxOQ
7mMvj1ptpvKh/c4os9HLNRoAy35a+KNES7x1Y/QELpVOaioWJ8odsYXOeVPdMqH7
AiX+0XloUZzRtrzC3CEzMoiXBxDWUmWEGtPl+6XeKgUU2QIDAQABo4H0MIHxMB0G
A1UdDgQWBBR8AGqpq1LIzjllG698zxPkbi7UcjCBwQYDVR0jBIG5MIG2gBR8AGqp
q1LIzjllG698zxPkbi7UcqGBkqSBjzCBjDELMAkGA1UEBhMCVVMxEzARBgNVBAgT
CkNhbGlmb3JuaWExETAPBgNVBAcTCFNhbiBKb3NlMREwDwYDVQQKEwh0ZXN0LmNv
bTEMMAoGA1UECxMDZW5nMRQwEgYDVQQDEwtlbmcgcm9vdCBDQTEeMBwGCSqGSIb3
DQEJARYPZW5nX2NhQHRlc3QuY29tggkA8u3PNgWykTEwDAYDVR0TBAUwAwEB/zAN
BgkqhkiG9w0BAQUFAAOBgQCbME9hvbHZC6BWuHdaCObSpoATC6ot9R7RX06yWZqt
07OiEY6hUeVr89SxlNOaukME2Ujc0cLpJSeBRFQfvH8uRCYv8n5GrSbzIUcbIJtQ
YfeuQVSN5kFyd03QKSoWVirf8PkZLBnmHWen7ddqSWaa1CUdNg8KifG15Vxj4cPV
sw==
-----END CERTIFICATE-----
gcheng@gong-ubuntu:~/tmp/certs$ openssl x509 -text -in myclientcert.pem
Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number: 1 (0x1)
        Signature Algorithm: sha1WithRSAEncryption
        Issuer: C=US, ST=California, L=San Jose, O=test.com, OU=eng, CN=eng root CA/emailAddress=eng_ca@test.com
        Validity
            Not Before: Aug  7 19:51:58 2008 GMT
            Not After : Aug  5 19:51:58 2018 GMT
        Subject: C=US, ST=California, L=San Jose, O=test.com, OU=eng, CN=eng test client/emailAddress=eng_client@test.com
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
            RSA Public Key: (1024 bit)
                Modulus (1024 bit):
                    00:91:96:8d:69:88:6d:a3:80:b4:6b:d0:07:3c:1b:
                    2e:5a:dc:9f:fe:ec:9b:3b:ed:83:b6:95:98:f4:26:
                    45:ab:63:1b:76:a3:9b:bb:f0:a3:aa:1f:7d:53:72:
                    05:bb:ac:ff:c0:58:f6:47:8b:ef:fe:4f:e5:01:cb:
                    3c:10:51:52:78:ec:ec:8f:5b:df:c8:f0:d3:96:f0:
                    84:d9:5a:88:81:9c:fb:c9:09:b2:18:1d:d8:55:97:
                    ab:77:8a:b9:26:07:c6:f7:13:47:37:20:6b:78:f8:
                    f5:40:3b:0d:5f:b8:1d:b3:7b:a1:3e:19:bd:31:01:
                    0d:09:69:d7:16:dc:3e:7c:37
                Exponent: 65537 (0x10001)
        X509v3 extensions:
            X509v3 Extended Key Usage:
                TLS Web Client Authentication
    Signature Algorithm: sha1WithRSAEncryption
        5d:36:31:22:5a:4b:ca:cf:de:26:72:8b:e9:5c:b7:01:97:53:
        02:c7:02:70:cc:39:a5:f0:2e:96:8a:0c:53:99:bf:f8:2d:c9:
        d2:f3:4f:31:fa:0d:87:b0:85:4b:03:fa:1e:09:34:7e:80:60:
        59:f5:24:4b:75:ba:c2:ed:df:d6:b2:85:c3:e3:69:df:b9:66:
        de:09:83:3c:36:82:ad:96:47:0c:26:d6:af:ad:74:c6:95:2b:
        48:76:2f:6b:49:4f:50:f5:28:ac:50:00:e5:cf:01:74:a8:01:
        71:ba:c8:69:41:11:62:5a:b3:e4:ac:45:cf:aa:9e:9a:0c:e3:
        aa:8f
-----BEGIN CERTIFICATE-----
MIICrzCCAhigAwIBAgIBATANBgkqhkiG9w0BAQUFADCBjDELMAkGA1UEBhMCVVMx
EzARBgNVBAgTCkNhbGlmb3JuaWExETAPBgNVBAcTCFNhbiBKb3NlMREwDwYDVQQK
Ewh0ZXN0LmNvbTEMMAoGA1UECxMDZW5nMRQwEgYDVQQDEwtlbmcgcm9vdCBDQTEe
MBwGCSqGSIb3DQEJARYPZW5nX2NhQHRlc3QuY29tMB4XDTA4MDgwNzE5NTE1OFoX
DTE4MDgwNTE5NTE1OFowgZQxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpDYWxpZm9y
bmlhMREwDwYDVQQHEwhTYW4gSm9zZTERMA8GA1UEChMIdGVzdC5jb20xDDAKBgNV
BAsTA2VuZzEYMBYGA1UEAxMPZW5nIHRlc3QgY2xpZW50MSIwIAYJKoZIhvcNAQkB
FhNlbmdfY2xpZW50QHRlc3QuY29tMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKB
gQCRlo1piG2jgLRr0Ac8Gy5a3J/+7Js77YO2lZj0JkWrYxt2o5u78KOqH31TcgW7
rP/AWPZHi+/+T+UByzwQUVJ47OyPW9/I8NOW8ITZWoiBnPvJCbIYHdhVl6t3irkm
B8b3E0c3IGt4+PVAOw1fuB2ze6E+Gb0xAQ0JadcW3D58NwIDAQABoxcwFTATBgNV
HSUEDDAKBggrBgEFBQcDAjANBgkqhkiG9w0BAQUFAAOBgQBdNjEiWkvKz94mcovp
XLcBl1MCxwJwzDml8C6WigxTmb/4LcnS808x+g2HsIVLA/oeCTR+gGBZ9SRLdbrC
7d/WsoXD42nfuWbeCYM8NoKtlkcMJtavrXTGlStIdi9rSU9Q9SisUADlzwF0qAFx
ushpQRFiWrPkrEXPqp6aDOOqjw==
-----END CERTIFICATE-----
gcheng@gong-ubuntu:~/tmp/certs$ openssl x509 -text -in myservercert.pem
Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number: 2 (0x2)
        Signature Algorithm: sha1WithRSAEncryption
        Issuer: C=US, ST=California, L=San Jose, O=test.com, OU=eng, CN=eng root CA/emailAddress=eng_ca@test.com
        Validity
            Not Before: Aug  7 19:53:17 2008 GMT
            Not After : Aug  5 19:53:17 2018 GMT
        Subject: C=US, ST=California, L=San Jose, O=test.com, OU=eng, CN=eng test server/emailAddress=eng_server@test.com
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
            RSA Public Key: (1024 bit)
                Modulus (1024 bit):
                    00:9e:fa:d9:76:96:ee:19:cf:e3:95:b5:3a:2c:bf:
                    eb:af:77:0b:f9:29:7a:87:d2:e6:8d:66:44:49:b7:
                    fd:de:2f:f1:21:75:9f:82:7b:01:70:c7:33:48:ec:
                    4b:fb:12:6c:01:b2:39:4d:7d:10:d4:0d:d2:a6:76:
                    b3:51:0b:e9:1e:d3:c6:2e:c3:0d:a8:f7:69:38:96:
                    79:72:ec:93:17:bc:25:f8:61:64:d7:26:3d:84:36:
                    b5:78:a9:9d:25:c9:73:3c:0e:22:21:90:d7:2f:21:
                    b0:ee:cf:c9:55:fb:d8:d7:87:9e:18:0d:ee:97:22:
                    ae:82:0c:d4:d3:e1:bd:53:4f
                Exponent: 65537 (0x10001)
        X509v3 extensions:
            X509v3 Extended Key Usage:
                TLS Web Server Authentication
    Signature Algorithm: sha1WithRSAEncryption
        0b:0c:e7:71:3d:66:4a:d1:43:1f:a4:3f:84:a5:af:0d:7e:74:
        7e:24:d9:13:64:28:27:31:f1:bf:ff:ed:a7:f6:9a:65:01:88:
        f8:1f:58:cc:b1:ba:26:8a:6e:0a:12:8c:a8:b8:09:0a:37:c8:
        41:e0:38:a4:fa:13:2b:9c:61:03:c3:3e:6e:e9:38:8b:f4:43:
        5a:8c:2c:54:87:ab:cc:96:71:b0:25:cd:75:fd:65:bc:7c:da:
        1b:df:db:60:6d:f6:73:5c:54:2e:46:85:bc:ed:d8:7d:cc:ed:
        6b:af:82:fc:45:01:4c:e1:c1:25:15:c2:c3:52:b5:0f:dd:df:
        5e:f0
-----BEGIN CERTIFICATE-----
MIICrzCCAhigAwIBAgIBAjANBgkqhkiG9w0BAQUFADCBjDELMAkGA1UEBhMCVVMx
EzARBgNVBAgTCkNhbGlmb3JuaWExETAPBgNVBAcTCFNhbiBKb3NlMREwDwYDVQQK
Ewh0ZXN0LmNvbTEMMAoGA1UECxMDZW5nMRQwEgYDVQQDEwtlbmcgcm9vdCBDQTEe
MBwGCSqGSIb3DQEJARYPZW5nX2NhQHRlc3QuY29tMB4XDTA4MDgwNzE5NTMxN1oX
DTE4MDgwNTE5NTMxN1owgZQxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpDYWxpZm9y
bmlhMREwDwYDVQQHEwhTYW4gSm9zZTERMA8GA1UEChMIdGVzdC5jb20xDDAKBgNV
BAsTA2VuZzEYMBYGA1UEAxMPZW5nIHRlc3Qgc2VydmVyMSIwIAYJKoZIhvcNAQkB
FhNlbmdfc2VydmVyQHRlc3QuY29tMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKB
gQCe+tl2lu4Zz+OVtTosv+uvdwv5KXqH0uaNZkRJt/3eL/EhdZ+CewFwxzNI7Ev7
EmwBsjlNfRDUDdKmdrNRC+ke08Yuww2o92k4lnly7JMXvCX4YWTXJj2ENrV4qZ0l
yXM8DiIhkNcvIbDuz8lV+9jXh54YDe6XIq6CDNTT4b1TTwIDAQABoxcwFTATBgNV
HSUEDDAKBggrBgEFBQcDATANBgkqhkiG9w0BAQUFAAOBgQALDOdxPWZK0UMfpD+E
pa8NfnR+JNkTZCgnMfG//+2n9pplAYj4H1jMsbomim4KEoyouAkKN8hB4Dik+hMr
nGEDwz5u6TiL9ENajCxUh6vMlnGwJc11/WW8fNob39tgbfZzXFQuRoW87dh9zO1r
r4L8RQFM4cElFcLDUrUP3d9e8A==
-----END CERTIFICATE-----
=CODE_END=

# Explanation about client/server certificate

In theory, a certificate is a certificate, then why the difference between client and server certificate? Apparently, windows clients need that distinction. There is a extension called XP extension that does different things for "client" and "sever". Your windows laptop's EAP supplicant must use the "client" version of it (if it needs a certificate like in EAP-TLS) and its EAP peer/RADIUS server should use the server version of it. Otherwise, things might break. I know it will before but I haven't tried any lately.


# Some Restrictions

To avoid bloating the command line syntax, I made a few restrictions:

* The key-guard passphrase for root CA is hardcoded to "whatever" in the script
* Due to the above hardcoded pass phrase, you can only use certgen to create client
* Instead of asking the user how long should the certificates be valid, I hardcoded the expiration time to be 3650 days. Search for that number and you can change it.


# Testing

I must admit that the script is still fresh. I haven't done extensive testing, but I have tried it on a few ubuntu and fc8 systems of mine and it worked fine. I also tried it using the eapol_test/freeradius interaction (see [ my post about this ](http://www.freesoftwaremagazine.com/community_posts/howto_incremental_setup_freeradius_server_eap_authentications)) with EAP-TLS and the certs passed.


