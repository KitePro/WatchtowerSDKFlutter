#import "WTPigeon.h"

@interface WTImplementation : NSObject<WTPigeon>
- (void)sendTest:(NSString *)message error:(FlutterError *_Nullable *_Nonnull)error;
@end
