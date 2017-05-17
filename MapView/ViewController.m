//
//  ViewController.m
//  MapView
//
//  Created by Miaoyu li on 5/4/17.
//  Copyright © 2017 Miaoyu li. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.mapview.delegate = self;
    locationManager.delegate = self;
    locationManager = [[CLLocationManager alloc] init];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)mapTypes:(id)sender {
    if (self.segcontrol.selectedSegmentIndex == 0) {
        self.mapview.mapType = MKMapTypeStandard;
    }
    if (self.segcontrol.selectedSegmentIndex == 1) {
        self.mapview.mapType = MKMapTypeSatellite;
    }
    if (self.segcontrol.selectedSegmentIndex == 2) {
        self.mapview.mapType = MKMapTypeHybrid;
    }
}

- (IBAction)locateMe:(id)sender {
    
    [locationManager requestWhenInUseAuthorization];
    [locationManager requestAlwaysAuthorization];
    [locationManager startUpdatingLocation];
    
    self.mapview.showsUserLocation = YES;
    
}



@end
