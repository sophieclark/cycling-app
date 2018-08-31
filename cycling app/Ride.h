//
//  Ride.h
//  cycling app
//
//  Created by Sophie Clark on 17/08/2018.
//  Copyright © 2018 Sophie Clark. All rights reserved.
//

#import <Realm/Realm.h>

@class Ride;

@interface Location : RLMObject

@property double latitude;
@property double longitude;
@property double altitude;
@property NSDate *time;

@end
RLM_ARRAY_TYPE(Location)

@interface Ride : RLMObject
    
@property NSDate *startTime;
@property NSDate *finishTime;
@property RLMArray<Location> *locations;

@end
