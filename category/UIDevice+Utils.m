#import "UIDevice+Utils.h"

#import <AVFoundation/AVFoundation.h>

@implementation UIDevice (Utils)

+ (BOOL)hasCamera
{
    return [UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera];
}

+ (BOOL)hasMicrophone
{
    AVAudioSession *session = [AVAudioSession sharedInstance];
    return [session inputIsAvailable];
}

@end
