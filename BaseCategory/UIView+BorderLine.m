//
//  UIView+BorderLine.m
//  ZJYCategory
//
//  Created by Kevin on 2016-08-01
//  Copyright (c) 2016 Hangzhou Zhujiayi Technology Co. Ltd. All rights reserved.
//

#import "UIView+BorderLine.h"

@implementation UIView (BorderLine)

- (void)addBorderLineAtPosition:(BorderLinePosition)position
{
    NSInteger tag = 121714 + position;
    
    if ([self viewWithTag:tag]) return;
    
    UIView *line = [[UIView alloc] init];
    line.backgroundColor = [UIColor colorWithRed:200/255.0 green:199/255.0 blue:204/255.0 alpha:1.0];
    line.tag = tag;
    
    switch (position) {
        case BorderLinePositionLeft: {
            line.frame = CGRectMake(0, 0, 0.5, self.bounds.size.height);
            break;
        }
            
        case BorderLinePositionRight: {
            line.frame = CGRectMake(self.bounds.size.width - 0.5, 0, 0.5, self.bounds.size.height);
            break;
        }
            
        case BorderLinePositionTop: {
            line.frame = CGRectMake(0, 0, self.bounds.size.width, 0.5);
            break;
        }
            
        case BorderLinePositionBottom: {
            line.frame = CGRectMake(0, self.bounds.size.height - 0.5, self.bounds.size.width, 0.5);
            break;
        }
            
        default:
            break;
    }
    
    [self addSubview:line];
}

@end
