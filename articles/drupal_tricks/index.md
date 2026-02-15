---
nid: '2817'
title: 'Tertiary menu in Drupal 6'
authors: 'Tony Mobily'
published: '2008-04-16 15:08:57'
tags: 'drupal,menu'
license: verbatim_only
section: hacking
listed: 'true'

---
By default, Drupal allows you to set a "primary" menu and a "secondary" menu.
At this point you should know that if you go to admin-> menus -> settings and pick the same menu for both primary and secondary links, the secondary links menu will contain the sub-menu of the selected item in the primary menu.

What happens if you have _three_ levels of menus?

<!--break-->

# Problem: the lack of a tertiary menu

What happens if you have _three_ levels of menus? For example, what happens if your menu looks like this:

* One 
 * One one
  * \\-\\-One one A
  * \\-\\-One one B
  * \\-\\-One one C
 * One two
  * \\-\\-One two A
  * \\-\\-One two B
 * One three
  * \\-\\-One three A
  * \\-\\-One three B
* Two
 * Two one
  * \\-\\-Two one A
  * \\-\\-Two one B

...ecc.?
PHPTemplate will create a two nice variables for you, `$primary_links` and `secondary_links`. Also, `$secondary_links` will contain the "right" entries if you set the primary menu and the secondary menu the same. What about `$tertiary_links`? Nowhere to be seen.

# Searching for a solution

If you search the forums about this topic, you will find the most diverse solutions. They all take considerable efforts.
The first question you want to ask is: how does the template generate those links?
If you look at `themes/engines/phptemplate/phptemplate.engine`, and look for the string `primary_links`, you will find:

=CODE_START=
'primary_links'       => menu_primary_links(),
...
'secondary_links'     => menu_secondary_links(),
=CODE_END=

If you search Drupal's codebase for those functions:

=CODE_START=
# grep -il menu_primary_links `find .`
./includes/menu.inc
./themes/chameleon/chameleon.theme
./themes/engines/phptemplate/phptemplate.engine
./themes/engines/phptemplate/.svn/text-base/phptemplate.engine.svn-base
#
=CODE_END=

Ah! Menu.inc seems to be the way to go.
The first function you find is:

=CODE_START=
/**
 * Returns an array containing the primary links.
 * Can optionally descend from the root of the Primary links menu towards the
 * current node for a specified number of levels and return that submenu.
 * Used to generate a primary/secondary menu from different levels of one menu.
[...]
function menu_primary_links($start_level = 1, $pid = 0) {
=CODE_END=

This is probably a little complex for a non-programmer.
However, `menu_secondary_links()` really gives everything away:

=CODE_START=
/**
 * Returns an array containing the secondary links.
 * Secondary links can be either a second level of the Primary links
 * menu or generated from their own menu.
 */
function menu_secondary_links() {
  $msm = variable_get('menu_secondary_menu', 0);
  if ($msm == 0) {
    return NULL;
  }

  if ($msm == variable_get('menu_primary_menu', 0)) {
    return menu_primary_links(2, $msm);
  }

  return menu_primary_links(1, $msm);
}
=CODE_END=

The second `if` is obviously checking if primary and secondary links come from the same menu. If they are, then it just prints them out.

So, you can assume that this:

=CODE_START=
menu_primary_links(3, variable_get('menu_primary_menu', 0) );
=CODE_END=

Will return the "tertiary" menu!

The last piece of the puzzle is the rendering.
FOr that, just see what any theme does:

=CODE_START=
<?php print theme('links', $primary_links, array('class' => 'links primary-links')) ?>
=CODE_END=

# The solution

At this point, the solution should be clear. Just type:

=CODE_START=
$m=menu_primary_links(3, variable_get('menu_primary_menu', 0) );
print theme('links', $m, array('class' => 'links tertiary-links'));
=CODE_END=

Anywhere, and you will get your "tertiary links"!
You can place this code in a block, or in the template directly.

# Troubleshooting

* Make sure that the secondary menus are "expanded"
* Make sure you have <?php and ?> around the code

