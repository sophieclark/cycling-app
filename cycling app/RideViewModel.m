//
//  RideViewModel.m
//  cycling app
//
//  Created by Sophie Clark on 30/08/2018.
//  Copyright © 2018 Sophie Clark. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RideViewModel.h"
#import <Realm/Realm.h>
#import "Ride.h"

@implementation RideViewModel

BOOL isRecording = NO;
Ride *ride;

- (id)initWithConfig:(RLMRealm *) configuredRealm
{
    self = [super init];
    if (self == nil) return nil;
    locationManager = [[CLLocationManager alloc] init];
    locationManager.delegate = self;
    locationManager.distanceFilter = kCLDistanceFilterNone;
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    [locationManager requestWhenInUseAuthorization];
    ride = [[Ride alloc] init];
    self.realm = configuredRealm;
    return self;
}

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations {
    for (CLLocation *cllocation in locations) {
        Location *location = [[Location alloc] init];
        location.altitude = cllocation.altitude;
        location.longitude = cllocation.coordinate.longitude;
        location.latitude = cllocation.coordinate.latitude;
        location.time = [NSDate date];
        [ride.locations addObject:location];
    }
}

-(void)toggleRecording {
    if (isRecording) {
        [self stopRecording];
    } else {
        [self startRecording];
    }
}

-(void)startRecording {
    [locationManager startUpdatingLocation];
    ride.startTime = [NSDate date];
}

-(void)stopRecording {
    [locationManager stopUpdatingLocation];
    ride.finishTime = [NSDate date];
}

@end
