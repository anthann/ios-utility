//
//  NSString+LabelWidthAndHeight.h
//
//  Created by anthann on 16/5/6.
//

#import <Foundation/Foundation.h>

@interface NSString (LabelWidthAndHeight)

- (CGFloat)heightWithStringAttribute:(NSDictionary <NSString *, id> *)attribute fixedWidth:(CGFloat)width;
- (CGFloat)widthWithStringAttribute:(NSDictionary <NSString *, id> *)attribute;
+ (CGFloat)aLineOfTextHeightWithStringAttribute:(NSDictionary <NSString *, id> *)attribute;

@end
