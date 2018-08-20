var mainWindow;

function initialize() {
 if (typeof qt != 'undefined') new QWebChannel(qt.webChannelTransport, function(channel) {
   mainWindow = channel.objects.mainWindow;

 } );
 else{
      alert('HI');
 }
}
