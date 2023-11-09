#import "WatchtowerPlugin.h"
#import "WTPigeon.h"
#import "WTImplementation.h"

@interface WatchtowerPlugin()
@end

@implementation WatchtowerPlugin

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar> *)registrar
{
    SetUpWTPigeonHost(registrar.messenger,  [[WTImplementation alloc] init]);
}


@end
