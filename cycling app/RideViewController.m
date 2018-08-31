//
//  ViewController.m
//  cycling app
//
//  Created by Sophie Clark on 17/08/2018.
//  Copyright © 2018 Sophie Clark. All rights reserved.
//

#import "RideViewController.h"
#import "RideViewModel.h"
#import <CoreLocation/CoreLocation.h>

@interface RideViewController ()

@end

@implementation RideViewController

@synthesize mapView;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.mapView.delegate = self;
    self.mapView.showsUserLocation = YES;
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startStopRidePressed:(id)sender {
    [self.viewModel toggleRecording];
}

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 800, 800);
    [self.mapView setRegion:[self.mapView regionThatFits:region] animated:YES];
}

@end
