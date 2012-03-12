//
//  ViewController.m
//  NYXImageKitDemo
//
//  Copyright (c) 2012 Shuichi Tsutsumi. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+Blurring.h"
#import "UIImage+Filtering.h"


@interface ViewController ()

@end



@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];    
    
    UIImage *orgImage = [UIImage imageNamed:@"m1.png"];
    
    NSInteger i = 0;
    for (UIView *aSubview in self.view.subviews) {
        
        if ([aSubview isKindOfClass:[UIImageView class]]) {
            
            UIImageView *imageView = (UIImageView *)aSubview;
            
            switch (i) {
                case 0:
                default:
                    imageView.image = orgImage;
                    break;
                case 1:
                    imageView.image = [orgImage gaussianBlurWithBias:0];
                    break;
                case 2:
                    imageView.image = [orgImage brightenWithValue:100.0];
                    break;
                case 3:
                    imageView.image = [orgImage edgeDetectionWithBias:0];
                    break;
                case 4:
                    imageView.image = [orgImage embossWithBias:0];
                    break;
                case 5:
                    imageView.image = [orgImage grayscale];
                    break;
                case 6:
                    imageView.image = [orgImage invert];
                    break;
                case 7:
                    imageView.image = [orgImage sepia];
                    break;
                case 8:
                    imageView.image = [orgImage unsharpenWithBias:0];
                    break;
            }
            
            i++;
        }
    }
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

@end
