//
//  RealmManager.h
//  cycling app
//
//  Created by Sophie Clark on 30/08/2018.
//  Copyright © 2018 Sophie Clark. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>

@interface RealmManager: NSObject
@property (strong) RLMRealm* realm;
-(void)setupRealm;
@end
