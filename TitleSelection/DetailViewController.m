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
    
    self.navigationController.navigationBar.tintColor = [UIColor greenColor]; // Not Seen on ViewController
    [self.navigationController.navigationBar setBarTintColor:[UIColor blackColor]]; // Seen on both VC's
    [self.navigationController.navigationBar setTranslucent:NO]; // Need this to apply colors
    
    
    /*          Title Color & "Name"     Detail Controller   Non Action Derived Just Title & Color     */
    [self.navigationController.navigationBar
     setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor greenColor], NSForegroundColorAttributeName,nil]];
    
    self.title = @"Quote";
    
    
    /* Background & Label: Holiding String Value */
    
    
    self.view.backgroundColor = [UIColor redColor];  // Detail Background Color
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(60, 200, 300, 100)];
    
    label.textColor = [UIColor whiteColor];
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
