//
//  MapViewController.h
//  WhereIsMyStuffApp
//
//  Created by Aashima Singh on 6/17/16.
//  Copyright © 2016 Aashima Singh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "EachResult.h"


@interface MapViewController : UIViewController

@property (weak, nonatomic) IBOutlet MKMapView *getMap;

@property (nonatomic, strong) NSString *result;
@end
