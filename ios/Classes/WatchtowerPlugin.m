#import "WatchtowerPlugin.h"
#import "WTImplementation.h"

WTPigeonFlutter *wTPigeonFlutter;

@implementation WatchtowerPlugin

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar> *)registrar
{
    SetUpWTPigeonHost(registrar.messenger,  [[WTImplementation alloc] init]);
    
    wTPigeonFlutter = [[WTPigeonFlutter alloc] initWithBinaryMessenger:registrar.messenger];
}

@end
