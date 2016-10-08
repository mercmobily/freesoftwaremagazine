---
nid: '2297'
title: 'Access denied!'
authors: admin
published: '2007-05-15 7:43:25'
license: verbatim_only

---
<?php global $user; ?>

<?php if($user->uid == 0){ ?> 

You don't have access to this page. Please go to our <a href="/user/user">login page</a>.

<?php } else { ?>

You don't have access to this page -- sorry!

<?php } ?>

<?php

# Delete node counter for this page.
db_delete('node_counter')
  ->condition('nid', 2297)
  ->execute();
?>