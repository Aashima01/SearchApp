//
//  MapViewController.m
//  WhereIsMyStuffApp
//
//  Created by Aashima Singh on 6/17/16.
//  Copyright © 2016 Aashima Singh. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    MKCoordinateRegion region = MKCoordinateRegionMake(CLLocationCoordinate2DMake(self.result.getLatitude,self.result.getLongitude) MKCoordinateSpanMake(0.3, 0.3);

//    [self.MKMapView]

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
