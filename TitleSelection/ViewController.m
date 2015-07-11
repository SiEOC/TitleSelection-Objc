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

- (void)viewDidAppear:(BOOL)animated  // As of rght Now view Did load is not 'respndig'  "viee will appear is.. :)
{

    
    UITapGestureRecognizer * tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(titleGestureLabelMethod)];
    UILabel * titleView = [UILabel new];
    titleView.text = @"VC Page";
    titleView.textColor = [UIColor redColor];
    [titleView sizeToFit];
    titleView.userInteractionEnabled = YES;
    [titleView addGestureRecognizer:tapGesture];
    
    self.navigationItem.titleView = titleView;
    [self.navigationController.navigationBar setTranslucent:NO];
}

-(void)viewWillAppear:(BOOL)animated
{
  
    /* Adding Butotons To  Left Nav Bar Item @ View Controller  */
    
    UIBarButtonItem *removeButton = [[UIBarButtonItem alloc]
                                      initWithTitle:@"Remove"
                                      style:UIBarButtonItemStylePlain
                                      target:self
                                      action:@selector(leftMethod)]; // Not yet functional //Skyler elden clark
    
    [self.navigationItem setLeftBarButtonItem:removeButton animated:YES];
    

    /*   Right Nav Button  @ View Controller  */
    
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc]
                                  initWithTitle:@"Add"
                                  style:UIBarButtonItemStylePlain
                                  target:self
                                  action:@selector(rightMethod)];
    
    [self.navigationItem setRightBarButtonItem:addButton animated:YES];
    

    /*      Color For View Controller       */
    
    self.navigationController.navigationBar.tintColor = [UIColor redColor]; // View Controller
    [self.navigationController.navigationBar setBarTintColor:[UIColor grayColor]]; // View Controller
    
    
    
   /*          Delegate & Data Source        */
    
    self.dataSource = [DataSource new]; // run time
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.tableView.delegate = (self);  // √ The object that acts as the delegate of the table view.
    self.tableView.dataSource = self.dataSource;
    self.tableView.backgroundColor = [UIColor cyanColor];  /*Changes Color To  Space Between NavBar and TableView*/
    [self.view addSubview:self.tableView];
}

-(void)leftMethod
{
    NSLog(@"Test Method For NavBar Left Is Executed");
}


-(void)rightMethod
{
    NSLog(@"Test Method For NavBar Right Side Is Executed");
}

-(void)titleGestureLabelMethod
{
    NSLog(@"Test Is Functional For Title label Gesture ON NAV BAR");
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailViewController *detailViewController = [DetailViewController new];
    detailViewController.titleString = [self.dataSource titleAtIndexPath:indexPath];
    [self.navigationController pushViewController:detailViewController animated:YES];
                                       
    
}





     
     
     
     
     
     
     
@end
