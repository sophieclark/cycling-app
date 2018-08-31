//
//  KeychainWrapper.m
//  cycling app
//
//  Created by Sophie Clark on 31/08/2018.
//  Copyright © 2018 Sophie Clark. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KeychainWrapper.h"

@implementation KeychainWrapper
-(void)setKeyValue:(NSString *)key withData:(NSData *)data {
    NSMutableDictionary *searchQuery = [[NSMutableDictionary alloc] init];
    [searchQuery setObject:(__bridge id)kSecClassGenericPassword forKey:(__bridge id)kSecClass];
    [searchQuery setObject: key forKey:(__bridge id)kSecAttrAccount];
    [searchQuery setObject:data forKey:(__bridge id)kSecValueData];
    SecItemDelete((__bridge CFDictionaryRef)searchQuery);
    OSStatus status = SecItemAdd((__bridge CFDictionaryRef)searchQuery, NULL);
    if (status!=noErr) {
        //throw an error
    }
}
-(NSData *)getKeyValue:(NSString *)key {
    NSDictionary *getquery = @{ (id)kSecClass: (id)kSecClassKey,
                                (id)kSecAttrAccount: key,
                                (id)kSecReturnData: @YES,
                                (id)kSecMatchLimit: @1,
                                };
    CFDataRef dataTypeRef = NULL;
    OSStatus status = SecItemCopyMatching((__bridge CFDictionaryRef)getquery, (CFTypeRef *)&dataTypeRef);
    if (status!=errSecSuccess) {
//        CFStringRef errorRef = SecCopyErrorMessageString(status, NULL);
//        NSLog(@"%s: %@", __FUNCTION__, (__bridge NSString *)errorRef));
        return nil;
    }
    else {
        NSData *data = (__bridge NSData *)(dataTypeRef);
        return data;
    }
}
@end
