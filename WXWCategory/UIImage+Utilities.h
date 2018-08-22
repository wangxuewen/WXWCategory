//
//  UIImage+Utilities.h
//  ZJYCategory
//
//  Created by Kevin on 2016-08-01
//  Copyright (c) 2016 Hangzhou Zhujiayi Technology Co. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Utilities)

+ (UIImage *)imageWithColor:(UIColor *)color;
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size cornorRadius:(CGFloat)cornorRadius;

- (instancetype)scaleToSize:(CGSize)size;
- (UIImage *)makeCircularImageWithSize:(CGSize)size;

@end
