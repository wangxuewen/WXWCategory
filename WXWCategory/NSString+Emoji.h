//
//  NSString+Emoji.h
//  ZhuJiaYiApplication
//
//  Created by Kevin on 2017/9/27.
//  Copyright © 2017年 zhujiayi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Emoji)
// 系统自带emoji
- (BOOL)containsEmoji;
// 第三方键盘emoji
- (BOOL)containsThirdEmoji;
// 中文九宫格输入键盘
- (BOOL)isNineKeyBoard;

@end
