//
//  UINavigationBar+Appearance.m
//
//  Created by anthann on 16/5/16.
//

#import "UINavigationBar+Appearance.h"

@implementation UINavigationBar (Appearance)

- (void)gpr_hideBottonOnePixelLine {
    UIImageView *hairLine = [self findHairlineImageViewUnder:self];
    if (hairLine) {
        hairLine.hidden = YES;
    }
}

- (void)gpr_reset {
    UIImageView *hairLine = [self findHairlineImageViewUnder:self];
    if (hairLine) {
        hairLine.hidden = NO;
    }
}

// 查找navigationBar底部的灰色横线
// ref http://stackoverflow.com/questions/19226965/how-to-hide-ios7-uinavigationbar-1px-bottom-line
- (UIImageView *)findHairlineImageViewUnder:(UIView *)view {
    if ([view isKindOfClass:UIImageView.class] && view.bounds.size.height <= 1.0) {
        return (UIImageView *)view;
    }
    for (UIView *subview in view.subviews) {
        UIImageView *imageView = [self findHairlineImageViewUnder:subview];
        if (imageView) {
            return imageView;
        }
    }
    return nil;
}

@end
