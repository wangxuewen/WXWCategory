//
//  NSURL+Param.m
//  ZJYCategory
//
//  Created by Kevin on 2016-08-01
//  Copyright (c) 2016 Hangzhou Zhujiayi Technology Co. Ltd. All rights reserved.
//

#import "NSURL+Param.h"
#import "NSString+Encoding.h"

@implementation NSURL (Param)

- (NSString *)valueForParam:(NSString *)param
{
    NSString *result;
    
    NSArray *params = [[self.query URLDecode] componentsSeparatedByString:@"&"];
    for (NSString *pair in params) {
        NSArray *keyValue = [pair componentsSeparatedByString:@"="];
        if (keyValue.count == 2) {
            if ([param isEqualToString:keyValue[0]]) {
                result = keyValue[1];;
                break;
            }
        }
    }
    
    return result;
}

@end
