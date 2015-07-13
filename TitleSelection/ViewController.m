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

- (void)viewDidAppear:(BOOL)animated  
{
   
    UITapGestureRecognizer * tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(titleGestureLabelMethod)];
    UILabel * titleView = [UILabel new];
    titleView.text = @"Movie Titles";
    titleView.textColor = [UIColor redColor];
    [titleView sizeToFit];
    titleView.userInteractionEnabled = YES;
    [titleView addGestureRecognizer:tapGesture];
    
    self.navigationItem.titleView = titleView;
    [self.navigationController.navigationBar setTranslucent:NO];

  
    /* Adding Butotons To  Left Nav Bar Item @ View Controller  */
    
    UIBarButtonItem *removeButton = [[UIBarButtonItem alloc]
                                      initWithTitle:@"Remove -"
                                      style:UIBarButtonItemStylePlain
                                      target:self
                                      action:@selector(leftMethod)]; // Not yet functional //Skyler elden clark
    
    [self.navigationItem setLeftBarButtonItem:removeButton animated:YES];
    

    /*   Right Nav Button  @ View Controller  */
    
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc]
                                  initWithTitle:@"Add +"
                                  style:UIBarButtonItemStylePlain
                                  target:self
                                  action:@selector(rightMethod)];
    
    [self.navigationItem setRightBarButtonItem:addButton animated:YES];
    

    /*      Color For View Controller */
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    [self.navigationController.navigationBar setBarTintColor:[UIColor blackColor]];
    
    
   /*          Delegate & Data Source */
    
// Why Does The TableView Create Another TableView Object WhenI Returm To The "ViewController" Page? // It Is the old instance (Shows My Previous Selected Title (Cell With Title) Is this A Nav Stack Property? Deque?  I Mask the isssue With WhiteBackground See Line 74-65.
    
    self.dataSource = [DataSource new]; // run time
    self.tableView = [[UITableView alloc] initWithFrame:[[UIScreen mainScreen] bounds] style:UITableViewStylePlain];
    self.tableView.delegate = (self);  // √ The object that acts as the delegate of the table view.
    self.tableView.dataSource = self.dataSource;
    self.tableView.backgroundColor = [UIColor whiteColor];  /*Changes Color To  Space Between NavBar and TableView */
    [self.view addSubview:self.tableView]; // Add TableView To View.
}


#pragma All My Methods SelectATIndex, Left,Title, Right

/* If I Will Select A Cell I will Then Get A Push To View Controler.  I should Have used The PresentViewController Method Instead. */

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath // Push To Next ViewController
{
    DetailViewController *detailViewController = [DetailViewController new];
    detailViewController.titleString = [self.dataSource titleAtIndexPath:indexPath];
    
    [self.navigationController pushViewController:detailViewController animated:YES];
    
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

     
     
     
     
     
     
     
@end
