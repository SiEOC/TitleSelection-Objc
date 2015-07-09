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
    
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithTitle:@"-" style:UIBarButtonItemStylePlain target:self action:nil];
    [self.navigationItem setLeftBarButtonItem:leftItem animated:YES];
    
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithTitle:@"+" style:UIBarButtonItemStylePlain target:self action:nil];
    [self.navigationItem setRightBarButtonItem:rightItem animated:YES];
    
    
    
    self.navigationController.navigationBar.tintColor = [UIColor redColor]; // Seen but Not Title
    [self.navigationController.navigationBar setBarTintColor:[UIColor grayColor]]; // Seen on only ViewController
    [self.navigationController.navigationBar setTranslucent:NO]; // Need this to apply colors
    
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName,nil]];
    
    self.title = @"Movies";
    
   
    
}



- (void)viewDidLoad {
    [super viewDidLoad];

    
    
    self.dataSource = [DataSource new];
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    //Delegate & Data Source
    self.tableView.delegate = (self);
    self.tableView.dataSource = self.dataSource;
    self.tableView.backgroundColor = [UIColor cyanColor];  //Changes Space Between NavBar and TableView
    
    // Add To View
    [self.view addSubview:self.tableView];
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    DetailViewController *detailViewController = [DetailViewController new];
    
    detailViewController.titleString = [self.dataSource titleAtIndexPath:indexPath];
    [self.navigationController pushViewController:detailViewController animated:YES];
                                       
    
}


- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return YES if you want the specified item to be editable.
    return YES;
}


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        //add code here for when you hit delete
    }
}


- (void)delete:(id)sender  //(id)sender is the object which sent the message to that selector.
{
//    self.tableView deleteRowsAtIndexPaths: withRowAnimation:nil;
}

     
- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
        self.tableView.allowsMultipleSelectionDuringEditing = editing;
        [super setEditing:editing animated:animated];

      // insert into NavBArbutton Method..  [self setEditing:YES animated:YES];
}
     
     
     
     
     
     
     
     
@end
