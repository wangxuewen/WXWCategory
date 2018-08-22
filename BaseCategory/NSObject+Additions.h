//
//  NSObject+Additions.h
//  ZJYCategory
//
//  Created by Kevin on 2016-08-01
//  Copyright (c) 2016 Hangzhou Zhujiayi Technology Co. Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSObject (Additions)

- (NSInteger)toInt;
- (NSUInteger)toUInt;
- (NSString *)toString;
- (CGFloat)toFloat;
- (double)toDouble;
- (BOOL)toBool;

- (NSArray *)toArray;
- (NSDictionary *)toDictionary;

- (NSString *)JSONString;

@end
