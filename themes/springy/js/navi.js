var setpos_sidebar_right = function()
{
  if ( IE )
    var top = getScrollOffset();
  else
    var top = 0;
  top += ( IE ? 4 : $('right-sidebar-trigger').Top() ) + $('right-sidebar-trigger').Height();
  var thediv = document.getElementById('right-sidebar');
  thediv.style.position = ( IE ) ? 'absolute' : 'fixed';
  thediv.style.top = top + 'px';
  thediv.style.right = '4px';
}

addOnloadHook(setpos_sidebar_right);
window.onscroll = setpos_sidebar_right;

function sidebar_right_open()
{
  setpos_sidebar_right();
  var thediv = document.getElementById('right-sidebar');
  thediv.style.display = 'block';
  var trigger = document.getElementById('right-sidebar-trigger');
  for ( var i = 0; i < trigger.childNodes.length; i++ )
  {
    if ( trigger.childNodes[i].tagName == 'A' )
    {
      trigger.childNodes[i].firstChild.nodeValue = 'hide navigation';
      break;
    }
  }
  if ( getWidth() < 1084 )
  {
    // small window, so move the main divs over to the left to make use of that padded area
    $('mainholder').object.style.margin = '0';
  }
}

function sidebar_right_close()
{
  var thediv = document.getElementById('right-sidebar');
  thediv.style.display = 'none';
  var trigger = document.getElementById('right-sidebar-trigger');
  for ( var i = 0; i < trigger.childNodes.length; i++ )
  {
    if ( trigger.childNodes[i].tagName == 'A' )
    {
      trigger.childNodes[i].firstChild.nodeValue = 'show navigation';
      break;
    }
  }
  $('mainholder').object.style.margin = '0 auto';
}

function sidebar_right_toggle()
{
  var thediv = document.getElementById('right-sidebar');
  if ( thediv.style.display != 'block' )
    sidebar_right_open();
  else
    sidebar_right_close();
}

