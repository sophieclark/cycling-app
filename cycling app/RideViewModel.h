//
//  RideViewModel.h
//  cycling app
//
//  Created by Sophie Clark on 30/08/2018.
//  Copyright © 2018 Sophie Clark. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <Realm/Realm.h>
@class RideViewModel;

@interface RideViewModel : NSObject <CLLocationManagerDelegate> {
    CLLocationManager *locationManager;
}
@property (strong) RLMRealm *realm;
- (id)initWithConfig:(RLMRealm *) configuredRealm;
-(void)toggleRecording;
-(void)startRecording;
-(void)stopRecording;
@end
