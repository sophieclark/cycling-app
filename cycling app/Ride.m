//
//  Ride.m
//  cycling app
//
//  Created by Sophie Clark on 17/08/2018.
//  Copyright © 2018 Sophie Clark. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Ride.h"

@implementation Ride

+ (NSArray *)requiredProperties {
    return @[@"startTime", @"finishTime"];
}

@end

@implementation Location
+ (NSDictionary *)linkingObjectsProperties
{
    // Define "ride" as the inverse relationship to Ride.locations
    return @{ @"ride": [RLMPropertyDescriptor descriptorWithClass:Ride.class propertyName:@"locations"] };
}
@end
