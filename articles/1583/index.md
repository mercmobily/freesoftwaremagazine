---
nid: '1583'
title: 'serverResponse and light weight XML web services'
authors: 'David Sugar'
published: '2006-06-06 11:28:43'
license: verbatim_only
section: hacking
listed: 'true'

---
With the latest [GNU Telephony](http://wiki.gnutelephony.org) releases of [GNU Bayonne](http://wiki.gnutelephony.org/index.php/GNU_Bayonne), I have experimented with and introduced a new lightweight kind of XML based web service that I call serverResponse.  This was meant to offer something functionally capable of supporting automated remote procedure callable services, but that is far simpler to operate and requires far less code to support than [SOAP](http://www.w3.org/TR/soap/) or even [XMLRPC](http://www.xmlrpc.com/spec).  This is built around a new XML dialect called serverResponse, which suggests it is related to XMLRPC methodResponse in nature.

While serverResponse is perhaps most closely related to XMLRPC, it does not use explicit data types for parametric arguments and results.  This makes it possible to encapsulate a serverResponse query request withing a standard HTTP GET request, with parametric query options, rather than having to Marshal an XML document with explicitly typed and structured data, and then POST it as an XML request to the web server.  Further, in serverResponse, the URI being requested becomes the method invoked.  Let's consider a simple example of serverResponse:


=CODE_START=

GET /status.xml?entry=0 HTTP/1.0
User-Agent: Any
Host: 127.0.0.1
...

HTTP/1.1 200 OK
Connection: close
Server: Bayonne/1.5.4
Connection-Type: text/xml

<?xml version="1.0"?>
<serverResponse>
 <results server="bayonne" service="status">
  <result id="status" value="-- "/>
 </results>
</serverResponse>

=CODE_END=

The "results" block tells us that there is one or more successful results. The "result" entry tells us what the value of each result is and what that result is associated with by id. Generally, the server will  perform some operation when the GET request is received, and return the result of that operation as a "result". The "results" tag also holds information on the server type that was responding, and the explicit service, which reconfirms the URI, or, in XMLRPC what would have been the "method" invoked. If one wishes to simply indicate some function was completed successfully without returning any additional status information, it is sufficient to return an empty "results" block to indicate this.

Let us look at a rough equivalent in XMLRPC for comparison.  First, we would generate and post an XMLRPC document:


=CODE_START=

POST /RPC2 HTTP/1.0
User-Agent: Any
Host: 127.0.0.1
Content-Type: text/xml
Content-length: 161

<?xml version="1.0"?>
<methodCall>
 <methodName>bayonne.getStatus</methodName>
 <params>
  <param>
   <value><i4>0</i4></value>
  </param>
 </params>
</methodCall>

=CODE_END=

For which we would have to have an XML parser to process the request, and we would have to compute the content length in advance.  To this, we might get a reply back that looks like:


=CODE_START=

HTTP/1.1 200 OK
Connection: close
Content-Length: 158
Content-Type: text/xml
Server: bayonne/1.5.6

<?xml version="1.0"?> 
<methodResponse> 
 <params> 
  <param> 
   <value><string>-- </string></value> 
  </param> 
 </params> 
</methodResponse>

=CODE_END=

The near equivalent in SOAP would take several pages to even try and explain, as well as considerably more code to functionally support.

Here is an example of an error or fault message in serverResponse.  In this case, the serverResponse can include not just faults for error messages when an invoked service failed, but also can generate a response document for http service errors like the classic 404 Not Found:


=CODE_START=

GET /unknown.xml HTTP/1.0
User-Agent: Any
Host: 127.0.0.1
...

HTTP/1.1 404 Not Found
Connection: close
Server: Bayonne/1.5.4
Connection-Type: text/xml

<?xml version="1.0"?>
<serverResponse>
 <faults server="bayonne" service="http">
  <fault id="code" value="404"/>
  <fault id="text" value="Not Found"/>
 </faults>
</serverResponse>

=CODE_END=

The form of the fault response is an exact mirror of the successful result, with a "faults" block containing individual "fault" entries.  The equivalent error response to an improper request in XMLRPC is much more complicated than the successful result.  Here is a common example of the XMLRPC reply, which has a fixed structure in all cases:


=CODE_START=

HTTP/1.1 200 OK
Connection: close
Content-Length: 426
Content-Type: text/xml
Server: bayonne/1.5.6

<?xml version="1.0"?>
<methodResponse>
 <fault>
  <value>
   <struct>
    <member> 
     <name>faultCode</name>
     <value><int>4</int></value>
    </member>
    <member> 
     <name>faultString</name>
     <value><string>Too many parameters.</string></value>
    </member>
   </struct>
  </value>
 </fault> 
</methodResponse> 

=CODE_END=

I believe there are several advantages to be found in serverResponse over XMLRPC and by extension SOAP for building basic web services quickly, and especially where overhead matters. First, I do not use POST with an XML encoded query parameters. Instead I use a GET request.  This means that a server offering server response does not require XML parsing code of any kind, which XMLRPC requires to validate the posted request document.  Second I eliminated the need to compute a "Content-Length:".  This means the serverResponse reply can be generated free-form from an embedded service running on a simple embedded HTTP service without having to pre-compute the length of the reply message, or pre-buffer the reply to be able to do so.  While XMLRPC (and SOAP) are designed around complex supporting libraries that will Marshal strictly typed parametric data arguments and replies into function calls, serverResponse is very light weight to support, and very easy for other existing web services and scripting languages to directly use.

