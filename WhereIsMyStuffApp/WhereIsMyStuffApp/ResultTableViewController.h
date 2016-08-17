//
//  ResultTableViewController.h
//  WhereIsMyStuffApp
//
//  Created by Aashima Singh on 6/17/16.
//  Copyright © 2016 Aashima Singh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ResultTableViewController : UITableViewController {
    
    IBOutlet UILabel *lblName;
    IBOutlet UILabel *lblAddress;
}

@property (nonatomic, strong) NSString *whatVal;
@property (nonatomic, strong) NSString *whereVal;
@property (nonatomic, strong) NSString *numVal;




- (IBAction)goToWebsite:(id)sender;

@end
