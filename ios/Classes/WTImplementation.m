#import "WTImplementation.h"
#import <Flutter/Flutter.h>

@implementation WTImplementation

- (nullable FlutterStandardTypedData *)takeScreenshot:(FlutterError *_Nullable *_Nonnull)error{
    UIApplication *app = [UIApplication sharedApplication];
     UIViewController *rootController = app.delegate.window.rootViewController;
    UIImage *screenshot = [self takeScreenshotWithView:rootController.view];
    NSData *imageData = UIImagePNGRepresentation(screenshot);
    FlutterStandardTypedData *typedData = [FlutterStandardTypedData typedDataWithBytes:imageData];
    return typedData;
}

- (UIImage *)takeScreenshotWithView:(UIView *)view {
    CGFloat scale = UIScreen.mainScreen.scale;
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, view.opaque, scale);
    [view drawViewHierarchyInRect:view.bounds afterScreenUpdates:YES];
    UIImage *screenshot = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return  screenshot;
}

@end
