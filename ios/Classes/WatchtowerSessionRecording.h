#import "WatchtowerPigeon.h"

@interface WatchtowerSessionRecording : NSObject<WatchtowerScreenRecordingApi>
- (void)startRecorder:(NSInteger)interval error:(FlutterError * _Nullable __autoreleasing * _Nonnull)error;
@end
