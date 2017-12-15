#import <Foundation/Foundation.h>

#import "AVCBridgedPlugin.h"

/*JS_PLUGIN("com.avocadojs.plugin.browser", Browser) {
JS_METHOD("open", "url:string", JS_PROMISE)
}*/
               
//@interface AVOCADO_PLUGIN_DEFINE("com.avocadojs.plugin.browser", Browser)
//@end

AVC_PLUGIN(Browser,
  AVC_PLUGIN_METHOD(open, "url:string", AVCPluginReturnPromise);
  AVC_PLUGIN_METHOD(close, "options:any", AVCPluginReturnPromise);
)

AVC_PLUGIN(Camera,
  AVC_PLUGIN_METHOD(getPhoto, "options:any", AVCPluginReturnPromise);
)

AVC_PLUGIN(Clipboard,
  AVC_PLUGIN_METHOD(get, "options:any", AVCPluginReturnPromise);
  AVC_PLUGIN_METHOD(set, "options:any", AVCPluginReturnPromise);
)

AVC_PLUGIN(Console,
  AVC_PLUGIN_METHOD(log, "message:string,level?:string", AVCPluginReturnNone);
)

AVC_PLUGIN(Device,
  AVC_PLUGIN_METHOD(getInfo, "", AVCPluginReturnPromise);
)

AVC_PLUGIN(Filesystem,
  AVC_PLUGIN_METHOD(readFile, "file:string,directory:string,encoding:string", AVCPluginReturnPromise);
  AVC_PLUGIN_METHOD(writeFile, "file:string,directory:string,data:string, encoding:string", AVCPluginReturnPromise);
  AVC_PLUGIN_METHOD(appendFile, "file:string,directory:string,data:string,encoding:string", AVCPluginReturnPromise);
  AVC_PLUGIN_METHOD(deleteFile, "file:string,directory:string", AVCPluginReturnPromise);
  AVC_PLUGIN_METHOD(mkdir, "path:string,directory:string,createIntermediateDirectories:boolean", AVCPluginReturnPromise);
  AVC_PLUGIN_METHOD(rmdir, "path:string,directory:string", AVCPluginReturnPromise);
  AVC_PLUGIN_METHOD(readdir, "path:string,directory:string", AVCPluginReturnPromise);
  AVC_PLUGIN_METHOD(stat, "path:string,directory:string", AVCPluginReturnPromise);
)

AVC_PLUGIN(Geolocation,
  AVC_PLUGIN_METHOD(getCurrentPosition, "options:any", AVCPluginReturnPromise);
  AVC_PLUGIN_METHOD(watchPosition, "options:any", AVCPluginReturnCallback);
)

AVC_PLUGIN(Haptics,
  AVC_PLUGIN_METHOD(impact, "style:string", AVCPluginReturnPromise);
  AVC_PLUGIN_METHOD(selectionStart, "", AVCPluginReturnPromise);
  AVC_PLUGIN_METHOD(selectionChanged, "", AVCPluginReturnPromise);
  AVC_PLUGIN_METHOD(selectionEnd, "", AVCPluginReturnPromise);
  AVC_PLUGIN_METHOD(vibrate, "", AVCPluginReturnPromise);
)

AVC_PLUGIN(LocalNotifications,
           AVC_PLUGIN_METHOD(schedule, "", AVCPluginReturnPromise);
           )
/*
@interface AVOCADO_PLUGIN_DEFINE("com.avocadojs.plugin.modals", Modals)
@end

@interface AVOCADO_PLUGIN_DEFINE("com.avocadojs.plugin.motion", Motion)
@end

@interface AVOCADO_PLUGIN_DEFINE("com.avocadojs.plugin.network", Network)
@end

@interface AVOCADO_PLUGIN_DEFINE("com.avocadojs.plugin.splashscreen", SplashScreen)
@end

@interface AVOCADO_PLUGIN_DEFINE("com.avocadojs.plugin.statusbar", StatusBar)
@end
*/
