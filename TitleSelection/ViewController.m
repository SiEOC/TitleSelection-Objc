//
//  TitleSelectorViewController.m
//  TitleSelection
//
//  Created by Joshua Howland on 8/23/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "ViewController.h"
#import "DataSource.h"
#import "DetailViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) DataSource *dataSource;

@end

/*
 Step 2: Add Delegate methods
	
	•	Remember to add self as the delegate of the tableview
	•	Add the didSelectRowAtIndexPath method to the implementation file of TitleSelectorViewController
	•	In the didSelectRowAtIndexPath method change the title of the view controller to the text of the selected row. (you can get that information from self.datasource)

 
 */

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Table View Size Created
    self.dataSource = [DataSource new];
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    //Delegate & Data Source
    self.tableView.delegate = (self);
    self.tableView.dataSource = self.dataSource;
    
    // Add To View
    [self.view addSubview:self.tableView];
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    DetailViewController *detailViewController = [DetailViewController new];
    
    detailViewController.titleString = [self.dataSource titleAtIndexPath:indexPath];
    [self.navigationController pushViewController:detailViewController animated:YES];
    
    self.title = @"Titles";
    


    
    
//    [[UINavigationBar appearance] setTitleTextAttributes:
//     [NSDictionary dictionaryWithObjectsAndKeys:[UIColor yellowColor],
//    
//      NSForegroundColorAttributeName,
//      [UIColor purpleColor],
////      
//                                NSForegroundColorAttributeName,
//                                [NSValue valueWithUIOffset:UIOffsetMake(0, -1)],
//      
//      
//                                    NSForegroundColorAttributeName,
//                                    [UIFont fontWithName:@"Arial-Bold" size:15],

    
   [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]]; //Did Not.. check After done.
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
    [self.navigationController.navigationBar setBarTintColor:[UIColor redColor]];
    [self.navigationController.navigationBar setTranslucent:NO];



   


}
@end
