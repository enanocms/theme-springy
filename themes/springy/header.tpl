<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>{PAGE_NAME} &bull; {SITE_NAME}</title>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="{SCRIPTPATH}/includes/clientside/css/enano-shared.css" />
    <link id="mdgCss" rel="stylesheet" href="{SCRIPTPATH}/themes/{THEME_ID}/css/{STYLE_ID}.css" type="text/css" />
    {JS_DYNAMIC_VARS}
    <!-- This script automatically loads the other 15 JS files -->
    <script type="text/javascript" src="{SCRIPTPATH}/includes/clientside/static/enano-lib-basic.js"></script>
    <script type="text/javascript">
      if ( !IE )
        document.write('<link rel="stylesheet" href="{SCRIPTPATH}/themes/{THEME_ID}/css-global/for-mozillas-eyes-only.css" type="text/css" />');
    </script>
    {ADDITIONAL_HEADERS}
    <!-- BEGINNOT user_logged_in -->
    <style type="text/css">
      div#category_box_wrapper {
        display: none;
      }
    </style>
    <!-- BEGINELSE user_logged_in -->
    <script type="text/javascript" src="{SCRIPTPATH}/themes/{THEME_ID}/js/navi.js"></script>
    <!--[if IE]>
    <script type="text/javascript" src="{SCRIPTPATH}/themes/{THEME_ID}/js/sidebar-ie.js"></script>
    <![endif]-->
    <!-- END user_logged_in -->
    <script type="text/javascript">
      // Disable transition effects for the ACL editor
      // (they're real slow in this theme, at least in fx/opera/IE)
      var aclDisableTransitionFX = true;
    </script>
  </head>
  <body>
    <!-- BEGIN user_logged_in -->
      <div id="right-sidebar-trigger">
        <a href="#" onclick="sidebar_right_toggle(); return false;">show navigation</a>
      </div>
      <div id="right-sidebar">
        {SIDEBAR_RIGHT}
      </div>
    <!-- END user_logged_in -->
    <div id="mainholder">
      <div class="title">
        <h1 class="site-name">{SITE_NAME}</h1>
        <h2 class="site-desc">{SITE_DESC}</h2>
      </div>
      <div id="rap">
        <div class="content-holder">
          <!-- BEGIN user_logged_in -->
          <div class="menu_nojs" id="pagebar_main" style="margin-bottom: 12px;">
            <div class="label">Page tools</div>
            {TOOLBAR}
            <ul>
              {TOOLBAR_EXTRAS}
            </ul>
            <span class="menuclear"></span>
          </div>
          <!-- END user_logged_in -->
          <!-- The original idea was to make this table-less.
               And then came along Internet Explo*er. -->
          <table border="0" cellspacing="0" cellpadding="0" style="width: 642px;">
            <tr>
              <td valign="top">
          <div id="sidebar-left">
            {SIDEBAR_LEFT}
          </div>
              </td>
              <td valign="top">
          <div class="content-inner">
            <div style="float: right;">
              <img alt=" " src="{SCRIPTPATH}/images/spacer.gif" id="ajaxloadicon" />
            </div>
            <h2 id="h2PageName">{PAGE_NAME}</h2>
            <div id="ajaxEditContainer">
        
