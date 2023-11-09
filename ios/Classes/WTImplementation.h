#import "WTPigeon.h"

@interface WTImplementation : NSObject<WTPigeonHost>
- (nullable FlutterStandardTypedData *)takeScreenshot:(FlutterError *_Nullable *_Nonnull)error;
@end
