var win = Ti.UI.createWindow({
    backgroundColor : 'white'
});

var TiCustomBGService = require('net.uchidak.ticustombgservice');
Ti.API.info("module is => " + TiCustomBGService);

// background service
var service;

// background callback
var bgCallback = function() {
    Ti.API.log('---------------------bgcallback');
    if (Ti.App.currentService) {
        Ti.App.currentService.stop();
        Ti.App.currentService.unregister();
    }
    service = Titanium.App.iOS.customRegisterBackgroundService({
        url : 'your js file!!!!'
    });
};

// foreground callback
var resumeCallback = function() {
    Ti.API.log('---------------------resumecallback');
    if (Ti.App.currentService) {
        Ti.App.currentService.stop();
        Ti.App.currentService.unregister();
    }
};

// background
Titanium.App.addEventListener('pause', bgCallback);
// resume
Titanium.App.addEventListener('resumed', resumeCallback);

win.addEventListener('close', function(e) {
    // remove pause event
    Titanium.App.removeEventListener('pause', bgCallback);
    // remove resumed event
    Titanium.App.removeEventListener('resumed', resumeCallback);
});

win.open();
