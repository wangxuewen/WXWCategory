//
//  NSData+Encoding.h
//  ZJYCategory
//
//  Created by Kevin on 2016-08-01
//  Copyright (c) 2016 Hangzhou Zhujiayi Technology Co. Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (Encoding)

+ (NSData *)dataWithBase64EncodedString:(NSString *)string;
- (NSString *)Base64EncodedString;

@end
