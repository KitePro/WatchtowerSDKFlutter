#import "WatchtowerPlugin.h"
#import "WatchtowerSessionRecording.h"

WatchtowerScreenRecordingFlutterListener *screenRecordingFlutterListener;

@implementation WatchtowerPlugin

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar> *)registrar
{
    SetUpWatchtowerScreenRecordingApi(registrar.messenger,  [[WatchtowerSessionRecording alloc] init]);
    
    screenRecordingFlutterListener = [[WatchtowerScreenRecordingFlutterListener alloc] initWithBinaryMessenger:registrar.messenger];
}

@end
