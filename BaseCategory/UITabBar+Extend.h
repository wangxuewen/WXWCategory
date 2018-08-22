//
//  UITabBar+Extend.h
//  ZhuJiaYiApplication
//
//  Created by Kevin on 2016/12/7.
//  Copyright © 2016年 zhujiayi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITabBar (Extend)

- (void)showBadgeOnItemIndex:(NSInteger)index; // 显示小红点
- (void)hideBadgeOnItemIndex:(NSInteger)index; // 隐藏小红点

@end
