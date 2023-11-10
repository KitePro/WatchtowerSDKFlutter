#import "WTPigeon.h"

@interface WTImplementation : NSObject<WTPigeonHost>
- (void)startRecorder:(NSInteger)interval error:(FlutterError * _Nullable __autoreleasing * _Nonnull)error;
@end
