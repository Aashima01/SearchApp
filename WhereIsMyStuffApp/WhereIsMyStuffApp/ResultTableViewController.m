//
//  ResultTableViewController.m
//  WhereIsMyStuffApp
//
//  Created by Aashima Singh on 6/17/16.
//  Copyright © 2016 Aashima Singh. All rights reserved.
//

#import "ResultTableViewController.h"
#import "EachResult.h"
#import "MapViewController.h"

@interface ResultTableViewController ()

@end

@implementation ResultTableViewController {
    
    NSMutableArray *ResultArray;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *url = [NSString stringWithFormat:@"https://query.yahooapis.com/v1/public/yql?q=select%%20*%%20from%%20local.search%%20(%@)%%20where%%20zip%%3D%%27%@%%27%%20and%%20query%%3D%%27%@%%27&format=json&callback=",self.numVal, self.whereVal,self.whatVal];
    
    NSData *getData = [NSData dataWithContentsOfURL:[NSURL URLWithString:url]];

    NSDictionary *getApi = [NSJSONSerialization JSONObjectWithData:getData options:NSJSONReadingMutableContainers error:nil];
    
//    NSLog(@"%@",getApi);
    
    NSArray *allResults = [[[getApi objectForKey:@"query"]objectForKey:@"results"]objectForKey:@"Result"];
    
    ResultArray = [[NSMutableArray alloc] init];
    
    
    for(NSDictionary *eachDict in allResults) {
        EachResult *result = [[EachResult alloc] init];
        result.getTitle = [eachDict objectForKey:@"Title"];
        result.getPhone = [eachDict objectForKey:@"Phone"];
        result.getAddress = [eachDict objectForKey:@"Address"];
        result.getCity = [eachDict objectForKey:@"City"];
        result.getState = [eachDict objectForKey:@"State"];
        result.getWebsite = [eachDict objectForKey:@"BusinessUrl"];
        result.getReviews = [[eachDict objectForKey:@"Rating"]objectForKey:@"AverageRating"];
        result.getLatitude = [[eachDict objectForKey:@"Latitude"] floatValue];
        result.getLongitude = [[eachDict objectForKey:@"Longitude"]floatValue];
        
        [ResultArray addObject:result];
        
    }
 
}



#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
     return ResultArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
//    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:cell];
    
    EachResult *each = [ResultArray objectAtIndex:indexPath.row];
    cell.textLabel.text = each.getTitle;
//    cell.textPhone.text = each.getPhone;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@, %@ %@",each.getAddress,each.getCity,each.getState];
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
   
    MapViewController *mvc = segue.destinationViewController;
    
    NSIndexPath *path = [self.tableView indexPathForSelectedRow];
    
    mvc.result = [ResultArray objectAtIndex:path.row];
    

    
}


- (IBAction)ClkURL:(id)sender {
}
- (IBAction)goToWebsite:(id)sender {
}
@end
