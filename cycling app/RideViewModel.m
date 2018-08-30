//
//  RideViewModel.m
//  cycling app
//
//  Created by Sophie Clark on 30/08/2018.
//  Copyright © 2018 Sophie Clark. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RideViewModel.h"

@implementation RideViewModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        locationManager = [[CLLocationManager alloc] init];
        locationManager.delegate = self;
        locationManager.distanceFilter = kCLDistanceFilterNone;
        locationManager.desiredAccuracy = kCLLocationAccuracyBest;
        [locationManager requestWhenInUseAuthorization];
    }
    return self;
}

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations {
    
}

-(void)startRecording {
    [locationManager startUpdatingLocation];
}

-(void)stopRecording {
    [locationManager stopUpdatingLocation];
}

@end
