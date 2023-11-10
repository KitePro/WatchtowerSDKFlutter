#import "WTImplementation.h"
#import "WatchtowerPlugin.h"
#import <Flutter/Flutter.h>

@implementation WTImplementation

- (void)startRec:(NSInteger) interval{
    NSTimeInterval timeInterval = (NSTimeInterval) interval / 1000.0;
    UIApplication *app = [UIApplication sharedApplication];
    UIViewController *rootController = app.delegate.window.rootViewController;
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        while (true) {
            UIImage *screenshot = [self takeScreenshot: rootController.view];
            UIImage *compressedScreenshot = [self СompressScreenshot: screenshot];
            
            //NSData *imageData = UIImageJPEGRepresentation(compressedScreenshot, 0.5);
            NSData *imageData = UIImagePNGRepresentation(compressedScreenshot);
           
            FlutterStandardTypedData *typedData = [FlutterStandardTypedData typedDataWithBytes:imageData];
            [wTPigeonFlutter takeScreenshot:typedData completion:^(FlutterError * _Nullable null) {
            }];
            [NSThread sleepForTimeInterval:timeInterval];
        }
    });
}

- (UIImage *)takeScreenshot:(UIView *)view {
    CGFloat scale = UIScreen.mainScreen.scale;
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, view.opaque, scale);
    [view drawViewHierarchyInRect:view.bounds afterScreenUpdates:NO];
    UIImage *screenshot = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return screenshot;
}

/*- (UIImage *)takeScreenshot:(UIView *)view {
    CGFloat scale = UIScreen.mainScreen.scale;
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, view.opaque, scale);
    [view drawViewHierarchyInRect:view.bounds afterScreenUpdates:YES];
    UIImage *screenshot = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return screenshot;
}*/

- (UIImage *) СompressScreenshot:(UIImage *) screenshotOriginal {
    CGFloat sizeRatio = screenshotOriginal.size.width / screenshotOriginal.size.height;
    CGImageRef imageRef = [screenshotOriginal CGImage];
    NSUInteger resolution = 640;
    NSUInteger height = resolution;
    NSUInteger width = (NSUInteger)(resolution * sizeRatio);
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    unsigned char* rawData = (unsigned char*)calloc(height * width * 4, sizeof(unsigned char));
    NSUInteger bytesPerPixel = 4;
    NSUInteger bytesPerRow = bytesPerPixel * width;
    NSUInteger bitsPerComponent = 8;
    CGContextRef context = CGBitmapContextCreate(rawData, width, height, bitsPerComponent, bytesPerRow, colorSpace, kCGImageAlphaPremultipliedLast | kCGBitmapByteOrder32Big);
    CGColorSpaceRelease(colorSpace);
    CGContextDrawImage(context, CGRectMake(0, 0, width, height), imageRef);
    CGImageRef imageFromPixelsRef = CGBitmapContextCreateImage(context);
    UIImage *imageFromPixels = [UIImage imageWithCGImage:imageFromPixelsRef];
    CGImageRelease(imageFromPixelsRef);
    CGContextRelease(context);
    CGColorSpaceRelease(colorSpace);
    free(rawData);
    return imageFromPixels;
}

- (void)startRecorder:(NSInteger)interval error:(FlutterError * _Nullable __autoreleasing * _Nonnull)error {
    [self startRec: interval];
}

@end
