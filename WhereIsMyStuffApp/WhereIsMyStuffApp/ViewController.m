//
//  ViewController.m
//  WhereIsMyStuffApp
//
//  Created by Aashima Singh on 6/16/16.
//  Copyright © 2016 Aashima Singh. All rights reserved.
//

#import "ViewController.h"
#import "ResultTableViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (IBAction)btnCrntLoc:(id)sender {
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    ResultTableViewController *rvc = segue.destinationViewController;
    rvc.whatVal = self.txtWhat.text;
    rvc.whereVal = self.txtWhere.text;
    rvc.numVal = self.txtNum.text;
}

@end
