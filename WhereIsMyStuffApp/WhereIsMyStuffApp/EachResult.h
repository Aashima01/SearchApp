//
//  EachMovie.h
//  WhereIsMyStuffApp
//
//  Created by Aashima Singh on 6/17/16.
//  Copyright © 2016 Aashima Singh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EachResult : NSObject

@property (nonatomic,strong) NSString *getTitle;
@property (nonatomic,strong) NSString *getPhone;
@property (nonatomic,strong) NSString *getAddress;
@property (nonatomic,strong) NSString *getCity;
@property (nonatomic,strong) NSString *getState;
@property (nonatomic,assign) float getLatitude;
@property (nonatomic,assign) float getLongitude;
@property (nonatomic,strong) NSString *getWebsite;
@property (nonatomic,strong) NSString *getReviews;



@end
