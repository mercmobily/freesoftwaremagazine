---
nid: '3638'
title: 'Free Software Magazine: articles on free software'
authors: admin
published: '2011-11-28 4:57:00'
license: verbatim_only

---
<div class="homepage clearfix">
    <div>
    <span style="display:inline-block; background: radial-gradient(grey,grey,black)">
      <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
      <!-- FSM Banner -->

      <ins class="adsbygoogle"
        style="display:inline-block;width:300px;height:600px"
        data-ad-client="ca-pub-4408039167229399"
        data-ad-slot="7033649099"></ins>
        <script>
        (adsbygoogle = window.adsbygoogle || []).push({});
      </script>

<!--DFP-->
<!-- /1610650/CentralBanner -->
<!--
<div id='div-gpt-ad-1434607958905-0' style='height:600px; width:300px;'>
<script type='text/javascript'>
googletag.cmd.push(function() { googletag.display('div-gpt-ad-1434607958905-0'); });
</script>
</div>
-->

    </span>

  <?php print fsm_sections_head(2090,2091,2092,2093,2094,2096,2097,2095) ?>
  </div>

<div class="block-articles clearfix">
  <h2 class="grid-8 alpha omega block-title"><span>Latest articles</span></h2>
  <?php print fsm_carousel(); ?>
  <?php print fsm_carousel_titles(); ?>
</div>

<div class="clearfix homepage">
  <?php print fsm_section(2096,5); #Opinions ?>
  <?php print fsm_section(2097,5);# End user ?>
  <?php print fsm_section(2093,5); # Hacking?>
  <?php print fsm_section(2092,5); # Games?>
  <?php print fsm_section(2094,5); # Interviews?>
  <?php print fsm_section(2091,5); #Humour ?>
  <?php print fsm_section(2090,5); # Book review ?>
  <?php print fsm_section(2095,5); # Announcements ?>
</div>

<?php
db_delete('node_counter')
  ->condition('nid', 3638)
  ->execute();
?>