---
nid: '3851'
title: 'The simple guide to bitcoins using Electrum'
authors: 'Tony Mobily'
published: '2015-06-13 7:56:27'
tags: 'bitcoin,bitcoins,security'
license: verbatim_only
section: end_users
main_image: main.png
listed: 'true'

---
Bitcoin is the most established digital currency available today. It provides a safe, anonymous way to send and receive a virtual currency everybody trusts. However, managing bitcoins is not _quite_ as simple as managing a bank account. In this article I will explain how to manage your bitcoins using Electrum. Please note that in this article I will provide _working_ knowledge of how to use Electrum, without entering the mysterious land of cryptography and technical details of Bitcoin.

# The basics: setting up Electrum

First of all, I suggest you [install the latest version of Electrum](https://electrum.org/#download). Note that Electrum exists for Linux, Windows, OS X and Android. Instructions will vary depending on your operating system.

Once you have installed it, it will ask you what you want to do: create a new wallet, or restore a wallet. For now, just chose to create a new wallet leaving the default options.

=IMG=1.png=The initial screen=

Then, the second step comes along: Electrum will show you your "wallet generation seed", which is a list of 13 words you will absolutely need to save somewhere safe.

=IMG=1a.png=The list of 13 words. If you are serious about bitcoins, you should memorise them=

_Remember: anybody with these words will be able to recreate exactly your Electrum wallet, and spend **all** of your bitcoins if they wish!_

Once you're done, it will prompt you with a password request. You should treat it like you treat your Internet Banking password.

Once you are done, you are finally good to go: Electrum will show by default a list of transactions you made. As you can see, there is (obviously) nothing here.

=IMG=2.png=Electrum started for the first time=

When you want to receive bitcoins you will need to provide your "bitcoin address": if you click on the "Receive" tab in Electrum, you will see the long string of numbers and letters. **Each one of them is a valid bitcoin address you can use to receive bitcoins**. Pick the first one in the list: that's the address you will use to transfer money into your wallet.

# Getting real money in

Exchanging Bitcoins into real money and vice versa is a tricky business. The main issue is that when you change real money into bitcoins, the tokens exchanged are 100% anonymous. So, these transactions are _very_ prone to fraud and money laundering.

=IMG=2a.png=Your default wallet, just created. Each line represent a working bitcoin address=

This is the reason why:

* companies who exchange bitcoins for money and vice versa are really careful about the identities of their customer
* **anybody who claims that they will send you money for your bitcoins without asking for ID and proof of address are very likely to be a scam**

=IMG=247_screen.png=What it looked like when I sent money over=

The Bitcoin wiki has a page on [How To Buy Bitcoins With Your Credit Card](https://en.bitcoin.it/wiki/How_To_Buy_Bitcoins_With_Your_Credit_Card). I would not use any service that is not listed here.

As an Australian travelling through Italy, for the purpose of writing this article, I picked 247exchange.com.  However, at the moment they do not cater for US customers.

Changing real money into bitcoin can be a real pain! However, it's well worth the effort. Generally speaking, be prepared to provide one form of official ID and an utility bill with your address.

Shortly after initiating your transactions, your bitclient will show a "pending" transaction; it will stay "pending" for a while: it will take some time for the bitcoin network to acknowledge the transaction as "done". The details are a little technical; however, just remember that it will take around 10 minutes or so.

=IMG=pending.png=The transaction is still pending=
 
=IMG=pending2.png=The bitcoin address the money was sent to is now showing the transaction=

Once the money is "cleared", it will appear as available in Electrum. 

=IMG=pending_transaction_done.png=Once the transaction it's done, it's shown as done=

=IMG=pending_transaction_done_2.png=See how the receiving address now has a balance=

Once you have received the bitcoins, the receiving address will show a balance.

# Sending bitcoins

Assume now that you want to send bitcoins out. Assume that you want to send half of the bitcoins you have on your wallet.

=IMG=send_1.png==

=IMG=send_2.png==

=IMG=send_3.png==

=IMG=send_4_a.png==

=IMG=send_history.png==

First of all, you will need to know the bitcoin address where you are sending your bitcoins to. Once you have it, go to the "Send" tab and enter the number of bitcoins you want to send.

Assume that you want to send a portion of the bitcoins you have. So, you have 4.9 micro bitcoins, and you want to send 3 out.

Click on "Send", enter the address where you want to send your bitcoin, pick "3" (as in, 3 micro bitcoins) and hit "send". You will be warned of a fee that will be automatically charged. Once you've agreed on the fee (I recommend you leave the default), you are done.

If you look at your wallet after this operation, you will see that:

* The address you used to receive the bitcoins is under the "used" list. It's not recommended to use that address again.
* The equivalent of the "unspent" bitcoins is associated to a bitcoin address under "change"

This can be confusing at first, but it actually makes a lot of sense: you had 4.9 micro bitcoins, and sent 3 out. However, in order to send those 3 micro bitcoins, you actually sent the _whole_ 4.9 micro bitcoins, and got the "change" (minus the fees).

This will also preserve your privacy: this "fragmentation" in your virtual wallet makes it much harder for anybody to figure out how much a person has.

Since that address now has a 0 balance (remember, the "change" went into a "change" address!), it is now marked as "used". This happens in Electrum once an address has been used at least once _and_ it has a 0 balance (bitcoins received is the same as bitcoins sent).

The reason is simple: in Bitcoins, the list of transactions is 100% public. If you ever only use the same bitcoin address (even to receive the "change" of your transactions), anybody able to associate that bitcoin address to you will have a very clear idea of your spending habits.

This is why you are encouraged to have, and use, several addresses when sending and receiving bitcoins. Since it's impossible to know who "owns" a specific wallet, you might in time receive large amounts of bitcoins, but all to different addresses; only you (and your bitcoin client) will know that those addresses all belong to you.

# Recovering your wallets

Recovering your coins in case of disaster consists in recovering your bitcoin addresses. Each address is made up of its "public" component (what you see when you run Electrum) and a private component (the super-secret private key associated to that address).

Storing this information is tricky, because computers break, get stolen, and things can (and do) generally go wrong. While other programs will recommend to store your addresses "somewhere safe", Electrum has a much better approach: it uses the "seed" (the list of 13 words) to generate your bitcoin addresses -- and I mean _both_ components, private and public.

So, there is no need to backup your bitcoin data: there is only a big need to memorise those words. The best spot for them is your own memory.

This article avoided any technical explanation about how Bitcoin works. If you are interested in a more technical view of it, I recommend [How might we use blockchains outside cryptocurrencies?](http://www.jenitennison.com/2015/05/21/blockchain.html) which is a fantastic explanation on how the Blockchain (the heart of Bitcoin) works.