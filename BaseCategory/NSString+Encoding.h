//
//  NSString+Encoding.h
//  ZJYCategory
//
//  Created by Kevin on 2016-08-01
//  Copyright (c) 2016 Hangzhou Zhujiayi Technology Co. Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Encoding)

- (NSString *)URLEncode;
- (NSString *)URLDecode;
- (NSString *)Base64Encode;
- (NSString *)MD5Encode;
- (NSString *)SHA1Encode;
- (NSString *)encryptUseDES:(NSString *)key;
- (NSString *)decryptUserDES:(NSString *)key;
- (NSString *)encryptUseDES:(NSString *)key iv:(NSString *)iv;
- (NSString *)decryptUseDES:(NSString *)key iv:(NSString *)iv;
+ (NSString *)hmac_sha1:(NSString *)key text:(NSString *)text;

@end
