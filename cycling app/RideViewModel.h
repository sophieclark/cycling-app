//
//  RideViewModel.h
//  cycling app
//
//  Created by Sophie Clark on 30/08/2018.
//  Copyright © 2018 Sophie Clark. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface RideViewModel : NSObject <CLLocationManagerDelegate> {
    CLLocationManager *locationManager;
}
-(void)startRecording;
-(void)stopRecording;
@end
