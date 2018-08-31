//
//  RealmManager.m
//  cycling app
//
//  Created by Sophie Clark on 30/08/2018.
//  Copyright © 2018 Sophie Clark. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>
#import "RealmManager.h"

@implementation RealmManager

-(void)setupRealm {
    RLMRealmConfiguration *config = [RLMRealmConfiguration defaultConfiguration];
    NSURL *defaultURL = [config fileURL];
    NSURL *defaultParentURL = [defaultURL URLByDeletingLastPathComponent];
    NSURL *securedURL = [defaultParentURL URLByAppendingPathComponent:@"default-secured.realm"];
    config.schemaVersion = 1;
    config.fileURL = securedURL;
    config.encryptionKey = [self secureRandomBytes];
    config.migrationBlock = ^(RLMMigration *migration, uint64_t oldSchemaVersion) {
        if (oldSchemaVersion < 1) {
            //nothing to migrate
        }
    };
    NSError *error = nil;
    self.realm = [RLMRealm realmWithConfiguration:config error:&error];
    if (!self.realm) {
        NSLog(@"Error opening realm: %@", error);
    }
}

-(NSData*)secureRandomBytes {
    NSMutableData *key = [NSMutableData dataWithLength:64];
    (void)SecRandomCopyBytes(kSecRandomDefault, key.length, (uint8_t *)key.mutableBytes);
    return key;
}

@end
