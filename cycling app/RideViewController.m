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

BOOL isRecording = false;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.viewModel = [[RideViewModel init] alloc];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startStopRidePressed:(id)sender {
    if (isRecording) {
        [self.viewModel stopRecording];
        isRecording = false;
    } else {
        [self.viewModel startRecording];
        isRecording = true;
    }
}

@end
