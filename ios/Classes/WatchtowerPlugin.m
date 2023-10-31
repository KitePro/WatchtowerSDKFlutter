#import "WatchtowerPlugin.h"
#import "WTPigeon.h"
#import "WTImplementation.h"

@interface WatchtowerPlugin()
@end

@implementation WatchtowerPlugin

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar> *)registrar
{
    SetUpWTPigeon(registrar.messenger, [[WTImplementation alloc] init]);
}

@end
