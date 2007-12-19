var ie_correct_navmenu = function()
{
  var top = getScrollOffset();
  top += 4;
  var thediv = document.getElementById('right-sidebar-trigger');
  thediv.style.position = 'absolute';
  thediv.style.top = top + 'px';
  thediv.style.right = '4px';
  setpos_sidebar_right();
}

addOnloadHook(ie_correct_navmenu);
window.onscroll = ie_correct_navmenu;

