//
//  DetailViewController.m
//  TitleSelection
//
//  Created by Skyler Clark on 7/8/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    
    
    
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor yellowColor]};
    
//    navLabel.text = @"Movies";
//    navLabel.textColor = [UIColor whiteColor];
//     UILabel *navLabel = [[UILabel alloc] initWithFrame:CGRectZero];
//    self.navigationItem.titleView = navLabel;
   
    [self.navigationController.navigationBar setTranslucent:NO];
    
    
    [self isFirstResponder];
    
    [self reloadInputViews];
    
    self.view.backgroundColor = [UIColor grayColor];
    
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Welcome" message:@"Here"  delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    
    [alert show];
  
    
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(60, 200, 300, 100)];
    
    label.textColor = [UIColor redColor];
    label.text = self.titleString;
    
    [self.view addSubview:label];
    
    
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
