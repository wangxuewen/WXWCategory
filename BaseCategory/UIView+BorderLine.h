//
//  UIView+BorderLine.h
//  ZJYCategory
//
//  Created by Kevin on 2016-08-01
//  Copyright (c) 2016 Hangzhou Zhujiayi Technology Co. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, BorderLinePosition) {
    BorderLinePositionLeft,
    BorderLinePositionRight,
    BorderLinePositionTop,
    BorderLinePositionBottom
};

@interface UIView (BorderLine)

- (void)addBorderLineAtPosition:(BorderLinePosition)position;

@end
