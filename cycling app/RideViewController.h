//
//  ViewController.h
//  cycling app
//
//  Created by Sophie Clark on 17/08/2018.
//  Copyright © 2018 Sophie Clark. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@class RideViewModel;

@interface RideViewController : UIViewController
@property (strong, nonatomic) RideViewModel *viewModel;
@end

