---
nid: '3855'
title: 'Interview with Mikeal Rogers: Node.js fork that ended up as a giant, unifying step forward'
authors: admin
published: '2015-06-18 4:43:01'
tags: 'interview,node,node.js'
license: verbatim_only
section: interviews
main_image: mikeal.jpg
listed: 'true'

---
Node.js is the software that allows you to run Javascript to create amazingly powerful server-side applications by using Google's V8 Javascript Engine. As a Node developer myself, I have always felt frustrated by seeing that Joyent, the company behind Node.s, was extremely conservative in terms of upgrading node to use the latest V8 version; the project was also struggling to get developers to actually contribute to code. This is why Fedor Indutny did the unthinkable: forked node and created IO.js. Today, the two projects are uniting possibly offering developers the best of both worlds.

<!--break-->

**Tony Mobily**: Mike, what happened after the fork?

**Mikeal Rogers**: After the fork, the io.js project created a new processes for development, governance, and releasing. At a time when contributions and releases of node.js were at a 5 year low the io.js project successfully brought contributions back up to an all time high. The iojs project did this by adapting ideas pioneered in the larger Node ecosystem. In terms of compatibility, all pure JavaScript modules worked without modification. Native modules (modules written in C++ which interact more directly with v8) must use newer versions of `nan` (Native Abstract for Node).

**TM**: What happened to node's development since the split?

It continued, and at a slightly improved pace but nothing compared to io.js. In io.js we actually reached a record number of contributions within just a few months — that was due in large part to implementing a much more participatory development and governance policy which is now the basis of the policy we are using for node.js under the Node Foundation.

**TM**: Things have changed since then: io.js and Node.js are now _merging_, in terms of codebase and administration. io.js will actually join a foundation created by... Joyent. Did you coordinate with Joyent in February, when they actually created the foundation?

**MR**: We had been advocating for node.js to be in a neutral foundation since before we created the io.js fork. We even advocated our preference for a new foundation formed under the Linux Foundation’s Collaborative Projects Initiative and that’s what Joyent ended up deciding to do after a series of talks with the LF.

Since even before the io.js fork happened members of io.js were working with Joyent through their Advisory Board and then with the Linux Foundation to adopt a governance model in the Node.js Foundation that could bring the projects back together.

**TM**: One of the main problems was the slow development pace of node.js under Joyent. Will this change with node being handed over to the Node.js foundation? It seems like io.js and Joyent have very different ideas in terms of releasing and the foundation's technical team (which I understand will be a merge of the two teams) might end up in conflict _within_ the foundation…

**MR**: The development policies of io.js are the basis for how we do regular releases and accept new contributions. The conservative nature of Joyent’s policies for node.js are found in the LTS (Long Term Support) strategy we are implementing for older (but highly depended on) release lines. There isn’t much of a conflict between these two priorities now that we’ve created a process that appeals to both sets of users and contributors.

**TM**: Have you already started to actively merge the codebases?

**MR**: Yup [https://github.com/nodejs/node](https://github.com/nodejs/node).

The io.js TC and the node.js core team have merged in to a unified TSC (Technical Steering Committee) under the Node Foundation and are collaboratively converging the code bases and, simultaneously, releasing older release lines of node.js and io.js until that convergence is complete.

**TM**: Is the trademark of "Node" being transferred as well? If somebody wants to create a web site about node.js with the "node" word in it, will they have to ask the newly formed Node.js foundation? Does the foundation already have some policies set in terms of allowing people to use the word "Node" in a Node.js context?

**MR**: The foundation’s trademark policy can be found here [foundation-trademark-policy.pdf](https://nodejs.org/images/foundation-trademark-policy.pdf).

It answers most of these questions and, yes, the foundation can approve any use of the mark.

Also, the use of “Node” in a “Node.js context” is a very tricky thing in terms of trademark law, especially considering that “node” is a generally used programming term — you’d need to talk to a real lawyer to explain that :)
