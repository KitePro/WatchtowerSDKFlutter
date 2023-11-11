// Autogenerated from Pigeon (v13.0.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#import <Foundation/Foundation.h>

@protocol FlutterBinaryMessenger;
@protocol FlutterMessageCodec;
@class FlutterError;
@class FlutterStandardTypedData;

NS_ASSUME_NONNULL_BEGIN


/// The codec used by WatchtowerScreenRecordingApi.
NSObject<FlutterMessageCodec> *WatchtowerScreenRecordingApiGetCodec(void);

@protocol WatchtowerScreenRecordingApi
- (void)startRecorder:(NSInteger)interval error:(FlutterError *_Nullable *_Nonnull)error;
@end

extern void SetUpWatchtowerScreenRecordingApi(id<FlutterBinaryMessenger> binaryMessenger, NSObject<WatchtowerScreenRecordingApi> *_Nullable api);

/// The codec used by WatchtowerScreenRecordingFlutterListener.
NSObject<FlutterMessageCodec> *WatchtowerScreenRecordingFlutterListenerGetCodec(void);

@interface WatchtowerScreenRecordingFlutterListener : NSObject
- (instancetype)initWithBinaryMessenger:(id<FlutterBinaryMessenger>)binaryMessenger;
- (void)takeScreenshot:(FlutterStandardTypedData *)frame completion:(void (^)(FlutterError *_Nullable))completion;
@end

NS_ASSUME_NONNULL_END
