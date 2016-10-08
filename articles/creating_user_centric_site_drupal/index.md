---
nid: '3043'
title: 'Creating a user-centric site in Drupal'
authors: 'Tony Mobily'
published: '2008-10-24 15:31:57'
tags: drupal
license: verbatim_only
section: opinions
main_image: ch1.jpg
listed: 'true'

---
A little while ago, while talking in the #drupal mailing list, I showed my latest creation to one of the core developers there. His reaction was "Wow, I am always surprised what people use Drupal for". His surprise is somehow justified: I did create a site for a bunch of [strippers in Perth](http://www.allhotstrippers.com/Perth/strippers), [strippers in Sydney](http://www.allhotstrippers.com/Sydney/strippers), [strippers in Brisbane](http://www.allhotstrippers.com/Brisbane/strippers)  (and Gold Coast/Sunshine Coast), [strippers in Melbourne](http://www.allhotstrippers.com/Melbourne/strippers). Yes, I would classify the link quite work-safe in European standards... maybe not as work-safe in the US. 
I used the same template to create a site for a bunch of [entertainers in Perth](http://perth.entertainers.biz),  a company set to use Drupal to take over the world with [Entertainers.Biz](http://www.entertainers.biz) (this one is work safe!).

_Update: since writing this article, I have updated the system so that the whole booking process happens online. I will update the article accordingly!_

<!--break-->

After talking about it for a while, I decided that it would be a good idea to write a short case study about how I created the site. So, here we go.

# The constraints

The site needed to be hosted in Perth. This was a crucial requirement, dictated by the fact that it was a very localised business, which needed some proximity between the IP of the potential customers and the hosting server. Hosting was therefore much more expensive that it could have been; however, the benefits in terms of search results were potentially quite big.

The site also needed to be fast, without eating too much memory. So, Drupal 6 was obviously a must, but that wasn't it. No "views", and in general no "big" modules that could potentially increase Drupal's footprint quite drastically. Basically, Drupal needed to be as bare as possible.

Another requirement was to make a site that was profile-centric. This was very important: the site itself wasn't much at all; the users' profiles, however, were "everything" in case the "user" had the role "stripper" enabled. This was made even more interesting by the need to have blogs -- and have them _within_ the profile space (as a tab, just to be clear).

One last requirement was that the site would have two classes of users: the normal ones, and strippers. Strippers would have a much more enhanced profile, with photos, blog, and so on; common users, on the other hand, would only need to have the standard Drupal profile. Most importantly, strippers needed to be able to change their profiles' information and photos whenever they liked. (Amazingly, all of the strippers were totally up-to-date with technology; one of them didn't have a computer, but used his iPhone for everything).

Here is how I did all this.

# Hosting in Perth

This one was easy. I searched the Drupal forums, and I found a post that [recommended Ilisys](http://groups.drupal.org/node/8055). They are also carbon neutral! This goes to show the power of the Drupal forums: I found immensely valuable information in them.

# Advanced profiles

Strippers needed much more advanced profiles. If a user was a stripper, s/he would need some extra tabs that would display extra information such as photos, a short interview, and a "stripper summary". The module that was the closest to what I needed was [Content Profile](http://drupal.org/project/content_profile). However, it only had about 40% of the features I needed it to have. Also, I had difficulty communicating effectively with the author's maintainer, Fago, while creating FriendList. Finally, the issue queue seemed a little too crowded for my own likings. I needed development to be fast. A crucial feature I needed, which was about taking over the "normal" profile page, was requested (with patch) in March 2008, but the module's author didn't think that it was appropriate to have it, and it's still pending today (November 2008).

I wrote my own module to achieve the results, and it worked fantastically well. As it turned out, writing a custom module in this situation proved to be crucial since quite a few features were rather specialised. If you see [Bronson Foxx's profile](http://www.allhotstrippers.com/person/Bronson%2BFoxx) you will see the extra tabs "Comments" and "Interview". There are two node types which are marked as "profile" ones. If you are the owner and have edit rights, or if you are admin, you get an "edit" link which will allow you to change the contents of the node. There is a 1:1 correspondence between a node of type "interview" owned by Bronson Foxx and the tab "Interview" for the profile Bronson Foxx. This means that there will be zero or one node for each tab -- and never more than one.

Permissions were a rather specialised feature of this module. In particular, tabs will only show up for other users if the _owner_ has rights to edit them. Here, "edit them" means that the user needs to have the right to "edit own $type content"). This is obvious: if a user doesn't have writing access to that profile information, then there is no way for him or her to create it, and therefore show it to other people. Also, the module allows you to decide if a tab should show up if the associated node doesn't exist.

This module is not released to the general public. This is because it's too close to something that already exists in Drupal, and I have no desire to enter another "duplication" war (after the big uproar that my Friendlist module created). If somebody wants to take it on, I will be more than happy to email it to him or her. Until then, it will be a private module.

Please let me know if you are a developer interested in creating a new Drupal project, or if you are interested in merging my module's features with Fago's "Content profile".

# Caged blogs

This is the most interesting feature. This was a _must_: blogging needed to live within the user profile's space. This means that I needed:

* A tab in the users' profile, which contained the list of blog entries with a pager
* The ability to display one blog entry _within_ the user's profile

Doing this is pretty complicated, because you basically need to work against Drupal's way of doing things. For Drupal, a blog entry is a node displayed as /node/12345.
To do the trick, I created a module called "caged_blog". With this `hook_menu()` function:

=CODE_START=
function blog_caged_menu() {

  $items['user/%user/blog'] = array(
    'title' => 'My blog',
    'page callback' => 'blog_caged_blog_page_user',
    'page arguments' => array(1),
    'access callback' => 'blog_caged_blog_access',
    'access arguments' => array(1),
    'type' => MENU_LOCAL_TASK,
  );

  $items['user/%user/blog/%node'] = array(
    'title' => 'Blog',
    'page callback' => 'blog_caged_blog_page',
    'page arguments' => array(1,3),
    'access callback' => 'blog_page_user_access',
    'access arguments' => array(1),
    'type' => MENU_LOCAL_TASK,
    'weight' => '15',
  );

  return $items;
}
=CODE_END=

The first menu item is managed by the function `blog_caged_page_user()`:

=CODE_START=
function blog_caged_blog_page_user($account){
  global $user;

  if( ! _blog_post_exists($account) ){

    $msg_1=t("No blog posts! ");
    if($user->uid == $account->uid && user_access('create blog entries')) {
      $msg_2=t('Add a blog entry <a href="!url">Now!</a>', array('!url' => url('node/add/blog') ));
    }
    return $msg_1 . $msg_2;
  }

  require_once('modules/blog/blog.pages.inc');
  return blog_page_user($account);
}
=CODE_END=


The function is a complete cheat: it simply leaches off `blog_page_user()` in order to return the right contents -- but within the user's domain.

Pretty much the same thing applies to the second menu entry, which is used to display a specific blog post:

=CODE_START=
function blog_caged_blog_page($user,$node){

  // Check that it's a user's blog entry we are talking about. This is to
  // prevent this from working for ANY kind of node, which would SUCK
  // as you'd be able to pull any content into the users' page
  if($node->type != 'blog' || $node->uid != $user->uid){
    drupal_not_found();
  }

  // Set the title and return the page!
  drupal_set_title($node->title);
  return node_show($node,NULL);
}
=CODE_END=

However, this is not enough. While the module does provide a list of blog entries in the users' page, it still allows the site to have the /blog URL which will show all of the blog entries, and the /blog/12345 URL which will show the blog entries owned by the user 12345. This last one is a real problem, because it will pop up every time any module links to a blog entry -- the uncaged version will be shown.

To fix this issue, I did two things. First of all, I zapped the two URLs I mentioned above from Drupal's routing table:

=CODE_START=
function blog_caged_menu_alter(&$callback){

  // Kill existing URLs, which will never get used. IMPORTANT:
  // make absolute sure you set the right redirections for outbound links!
  $callback['blog/%user_uid_optional']['page callback']='drupal_not_found';
  $callback['blog']['page callback']='drupal_not_found';
}
=CODE_END=

This will lead to a nice _non-functional_ Drupal site!
This is where settings.php came in handy, with its custom_rewrite functions.
In terms of outbound, this is what happens to the links:

=CODE_START=
function custom_url_rewrite_outbound(&$path, &$options, $original_path) {
  [...]

  // Small hack because /blog doesn't work and it might still come up
  // in breadcrumbs
  if (preg_match('|^blog$|', $path, $matches)) {
    $path="";
  }

  // Case #1: check cases if it's node/99 -- URLs will be rewritten
  // according to their type.
  // BLOGS: /node/99 into /user/admin/blog/99 
  if (preg_match('|^node/([0-9]*)$|', $path, $matches)) {
    $n=db_fetch_object(db_query("SELECT n.nid,n.type, u.name FROM {node} n LEFT JOIN {users} u on u.uid = n.uid WHERE n.nid = %d ",$matches[1]));
    if($n){
      $type=$n->type;
      $nid=$n->nid;

      // BLOGS     
      if($type == 'blog'){
        $user=$n->name;
        $path="person/$user/blog/$nid";
      }
    }
  }

  // Case #2: turn blog/99 into users/admin/blog
  if (preg_match('|^blog/([0-9]*)$|', $path, $matches)) {
    $uid = $matches[1];
    $res=settings_lookup_user_name_by_uid($uid);
    if($res){
      $res=urlencode($res);
      $path="person/$res/blog";
    }

  }
=CODE_END=

The meaning of this is pretty straightforward: any outbound links are rerouted to blog_caged module's hooks, which will obviously work as intended.

In terms of inbound, in order to keep things "clean", I made the blog nodes unreachable when accessed through the URL `node/12345`. 

=CODE_START=
function custom_url_rewrite_inbound(&$result, $path, $path_language=NULL) {
[...]
 // Since some nodes are special (profiles, blog posts, etc.), I don't
  // want them to be accessed at _all_
  if (preg_match('|^node/([0-9]*)$|', $path, $matches)) {
    $n=db_fetch_object(db_query("SELECT n.type FROM {node} n WHERE n.nid = %d ",$matches[1]));
    if($n){
      $type=$n->type;
      // BLOGS     
      if($type == 'blog'){
        $result="file_not_found";
      }
    }
  }
[...]
=CODE_END=

As you can see, there is some serious rewriting at work. However, it's fully worth it: as you can see, in the web site the blogs are fully caged.

# Conclusion

Well, it's definitely true: Drupal is immensely versatile, and widely used for all sorts of web sites. Creating All Hot Strippers was quite challenging: I had some very strict technical constraints which took some of Drupal's power away. And yet, the site is undeniably functional and somehow unique. More importantly, it can be expanded later should it be necessary.

My involvement in the company is obviously more than just "the web designer". Let's see if you can spot me!