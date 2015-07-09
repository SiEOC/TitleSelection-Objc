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

@implementation ViewController

-(void)viewWillAppear:(BOOL)animated
{
   
//    UIBarButtonItem *newBackButton = [[UIBarButtonItem alloc] initWithTitle:@"Test" style:UIBarButtonItemStylePlain target:self action:@selector(test)];
//    self.navigationItem.leftBarButtonItem = newBackButton;
//    
//    
//    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:self action:nil];
//    [self.navigationItem setRightBarButtonItem:rightItem animated:YES];
    
    
    self.navigationController.navigationBar.tintColor = [UIColor redColor];
    [self.navigationController.navigationBar setBarTintColor:[UIColor purpleColor]];
    [self.navigationController.navigationBar setTranslucent:NO]; // Need this to apply colors
    
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName,nil]];
    
    self.title = @"Movies";
    
    self.navigationController.navigationBar.tintColor = [UIColor redColor]; // Seen but Not Title
    [self.navigationController.navigationBar setBarTintColor:[UIColor grayColor]]; // Seen on only ViewController
    [self.navigationController.navigationBar setTranslucent:NO]; // Need this to apply colors
    
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName,nil]];
    
    self.title = @"Movies";
    
    self.dataSource = [DataSource new];
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    /*Delegate & Data Source*/
    self.tableView.delegate = (self);
    self.tableView.dataSource = self.dataSource;
    self.tableView.backgroundColor = [UIColor cyanColor];  /*Changes Color To  Space Between NavBar and TableView*/

    [self.view addSubview:self.tableView];
}

-(void)test
{
    NSLog(@"Test Method For NavBar Left Is Executed");
}

- (void)viewDidAppear:(BOOL)animated
{

    UITapGestureRecognizer * tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(test)];
    UILabel * titleView = [UILabel new];
    titleView.text = @"Test";
    [titleView sizeToFit];
    titleView.userInteractionEnabled = YES;
    [titleView addGestureRecognizer:tapGesture];
    
    self.navigationItem.titleView = titleView;
     [self.navigationController.navigationBar setTranslucent:NO];
}





- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailViewController *detailViewController = [DetailViewController new];
    detailViewController.titleString = [self.dataSource titleAtIndexPath:indexPath];
    [self.navigationController pushViewController:detailViewController animated:YES];
                                       
    
}





     
     
     
     
     
     
     
@end
