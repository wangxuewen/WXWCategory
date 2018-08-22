//
//  UIColor+Hex.m
//  ZJYCategory
//
//  Created by Kevin on 2016-08-01
//  Copyright (c) 2016 Hangzhou Zhujiayi Technology Co. Ltd. All rights reserved.
//

#import "UIColor+Hex.h"

@implementation UIColor (Hex)

+ (instancetype)colorWithHex:(NSUInteger)hex
{
    return [self colorWithHex:hex alpha:1.0];
}

+ (instancetype)colorWithHex:(NSUInteger)hex alpha:(CGFloat)alpha
{
    return [UIColor colorWithRed:((float)((hex & 0xFF0000) >> 16))/255.0 green:((float)((hex & 0xFF00) >> 8))/255.0 blue:((float)(hex & 0xFF))/255.0 alpha:alpha];
}

@end
