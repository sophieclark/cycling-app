//
//  ViewController.h
//  cycling app
//
//  Created by Sophie Clark on 17/08/2018.
//  Copyright © 2018 Sophie Clark. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@class RideViewModel;

@interface RideViewController : UIViewController <MKMapViewDelegate>
@property (strong, nonatomic) IBOutlet MKMapView *mapView;
- (IBAction)startStopRidePressed:(id)sender;
@property (strong, nonatomic) RideViewModel *viewModel;
@end

