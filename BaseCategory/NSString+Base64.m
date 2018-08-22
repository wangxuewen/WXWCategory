//
//  NSString+Base64.m
//
//  Created by apple on 16/8/19.
//  Copyright © 2016年 JunFly. All rights reserved.
//

#import "NSString+Base64.h"

@implementation NSString (Base64)

+ (NSString *)stringWithBase64EncodedString:(NSString *)string
{
    NSData *data = [NSData dataWithBase64EncodedString:string];
    if (data)
    {
        return [[self alloc] initWithData:data encoding:NSUTF8StringEncoding];
    }
    return nil;
}

- (NSString *)base64EncodedStringWithWrapWidth:(NSUInteger)wrapWidth
{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
    return [data base64EncodedStringWithWrapWidth:wrapWidth];
}

- (NSString *)base64EncodedString
{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
    return [data base64EncodedString];
}

- (NSString *)base64DecodedString
{
    return [NSString stringWithBase64EncodedString:self];
}

- (NSData *)base64DecodedData
{
    return [NSData dataWithBase64EncodedString:self];
}

- (NSString *)base64EncodedURLSafeString
{
    NSString *base64String = [self base64EncodedString];
    base64String = [base64String stringByReplacingOccurrencesOfString:@"/" withString:@"_"];
    base64String = [base64String stringByReplacingOccurrencesOfString:@"+" withString:@"-"];
    return base64String;
}

@end
