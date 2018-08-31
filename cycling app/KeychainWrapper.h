//
//  KeychainWrapper.h
//  cycling app
//
//  Created by Sophie Clark on 31/08/2018.
//  Copyright © 2018 Sophie Clark. All rights reserved.
//

#import <Security/Security.h>
#import <Foundation/Foundation.h>

@interface KeychainWrapper: NSObject
-(NSData *)getKeyValue:(NSString *) key;
-(void)setKeyValue:(NSString *) key withData:(NSData *) data;
-(NSString)
-(void)setRealmKeyValue:(NSData *) data;
@end
