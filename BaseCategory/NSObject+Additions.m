//
//  NSObject+Additions.m
//  ZJYCategory
//
//  Created by Kevin on 2016-08-01
//  Copyright (c) 2016 Hangzhou Zhujiayi Technology Co. Ltd. All rights reserved.
//

#import "NSObject+Additions.h"

@implementation NSObject (Additions)

- (NSInteger)toInt
{
    if ([self isKindOfClass:[NSNumber class]]) {
        return [(NSNumber *)self integerValue];
    }
    
    NSInteger result;
    @try {
        result = [[NSString stringWithFormat:@"%@", self] integerValue];
    }
    @catch (NSException *exception) {
        result = 0;
    }
    
    return result;
}

- (NSUInteger)toUInt
{
    if ([self isKindOfClass:[NSNumber class]]) {
        return [(NSNumber *)self unsignedIntegerValue];
    }
    
    NSUInteger result;
    @try {
        result = [[NSString stringWithFormat:@"%@", self] integerValue];
    }
    @catch (NSException *exception) {
        result = 0;
    }
    
    return result;
}

- (NSString *)toString
{
    if ([self isKindOfClass:[NSString class]]) {
        if ([(NSString *)self caseInsensitiveCompare:@"null"] == NSOrderedSame) {
            return @"";
        }
        else {
            return (NSString *)self;
        }
    }
    
    NSString *result;
    @try {
        if (self == nil || [self isKindOfClass:[NSNull class]]) {
            result = @"";
        }
        else {
            result = [NSString stringWithFormat:@"%@", self];
        }
    }
    @catch (NSException *exception) {
        result = @"";
    }
    
    return result;
}

- (CGFloat)toFloat
{
    if ([self isKindOfClass:[NSNumber class]]) {
        return [(NSNumber *)self floatValue];
    }
    
    CGFloat result;
    @try {
        result = [[NSString stringWithFormat:@"%@", self] floatValue];
    }
    @catch (NSException *exception) {
        result = 0.0f;
    }
    
    return result;
}

- (double)toDouble
{
    if ([self isKindOfClass:[NSNumber class]]) {
        return [(NSNumber *)self doubleValue];
    }
    
    double result;
    @try {
        result = [[NSString stringWithFormat:@"%@", self] doubleValue];
    }
    @catch (NSException *exception) {
        result = 0.0f;
    }
    
    return result;
}

- (BOOL)toBool
{
    if ([self isKindOfClass:[NSNumber class]]) {
        return [(NSNumber *)self boolValue];
    }
    
    if ([self isKindOfClass:[NSString class]]) {
        if ([(NSString *)self caseInsensitiveCompare:@"null"] == NSOrderedSame) {
            return NO;
        }
    }
    
    if ([self isKindOfClass:[NSNull class]]) {
        return NO;
    }
    
    return self ? YES : NO;
}

- (NSArray *)toArray
{
    return [self isKindOfClass:[NSArray class]] ? (NSArray *)self : nil;
}

- (NSDictionary *)toDictionary
{
    return [self isKindOfClass:[NSDictionary class]] ? (NSDictionary *)self : nil;
}

- (NSString *)JSONString
{
    NSString *JSONString;
    
    NSError *error;
    NSData *JSONData = [NSJSONSerialization dataWithJSONObject:self options:0 error:&error];
    if (error) {
        NSLog(@"[NSObject JSONString] error: %@", [error localizedDescription]);
    }
    else {
        JSONString = [[NSString alloc] initWithBytes:JSONData.bytes length:JSONData.length encoding:NSUTF8StringEncoding];
    }
    
    return JSONString;
}


@end
