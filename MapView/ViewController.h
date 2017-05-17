//
//  ViewController.h
//  MapView
//
//  Created by Miaoyu li on 5/4/17.
//  Copyright © 2017 Miaoyu li. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController<MKMapViewDelegate, CLLocationManagerDelegate> {
    CLLocationManager *locationManager;
}
@property (strong, nonatomic) IBOutlet MKMapView *mapview;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segcontrol;
- (IBAction)mapTypes:(id)sender;
- (IBAction)locateMe:(id)sender;



@end

