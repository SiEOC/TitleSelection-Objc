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

-(void)viewWillAppear:(BOOL)animated
{
    
    // Q: Movies appear after detail view...,
    
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithTitle:@"Left Side" style:UIBarButtonItemStylePlain target:self action:nil];
    [self.navigationItem setLeftBarButtonItem:leftItem animated:YES];
    
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithTitle:@"Right Side" style:UIBarButtonItemStylePlain target:self action:nil];
    [self.navigationItem setRightBarButtonItem:rightItem animated:YES];
    
    
    
    self.navigationController.navigationBar.tintColor = [UIColor redColor]; // Seen but Not Title
    [self.navigationController.navigationBar setBarTintColor:[UIColor whiteColor]]; // Seen on only ViewController
    [self.navigationController.navigationBar setTranslucent:NO]; // Need this to apply colors
    self.title = @"Movies";
}

- (void)viewDidLoad {
    [super viewDidLoad];

    
    
    self.dataSource = [DataSource new];
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    //Delegate & Data Source
    self.tableView.delegate = (self);
    self.tableView.dataSource = self.dataSource;
    
    // Add To View
    [self.view addSubview:self.tableView];
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    DetailViewController *detailViewController = [DetailViewController new];
    
    detailViewController.titleString = [self.dataSource titleAtIndexPath:indexPath];
    [self.navigationController pushViewController:detailViewController animated:YES];
    
    
    


}
@end
