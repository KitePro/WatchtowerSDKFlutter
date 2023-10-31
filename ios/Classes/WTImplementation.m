#import "WTImplementation.h"

@implementation WTImplementation

- (void)sendTest:(NSString *)message error:(FlutterError *_Nullable *_Nonnull)error{
    NSLog(@"Попытка сделать скриншот");
    CGFloat screenScale = [[UIScreen mainScreen] scale];
    CGSize screenSize = [[UIScreen mainScreen] bounds].size;
    CGSize res = CGSizeMake(screenSize.width * screenScale, screenSize.height * screenScale);
    UIGraphicsBeginImageContextWithOptions(res, NO, 0.0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    if(context){
        UIWindow *window = [UIApplication sharedApplication].keyWindow;
        [window.layer renderInContext:context];
        UIImage *screenshot = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        UIImageWriteToSavedPhotosAlbum(screenshot, self, @selector(image: didFinishSavingWithError:contextInfo:),nil);
        
        NSData *imageData = UIImagePNGRepresentation(screenshot);
        Byte *imageBytes = (Byte *)[imageData bytes];
        NSMutableArray *byteArray = [NSMutableArray array];
        for (int i = 0; i < [imageData length]; i++) {
            [byteArray addObject:@(imageBytes[i])];
        }
        NSString *result = [byteArray componentsJoinedByString:@", "];
        NSLog(result);
     }
}

- (void)image:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo {
    if (error) {
        NSLog(@"Ошибка сохранения скриншота: %@", error.localizedDescription);
    } else {
        NSLog(@"Скриншот успешно сохранен в фотоальбоме.");
    }
}
@end
