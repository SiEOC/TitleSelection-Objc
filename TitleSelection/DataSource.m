//
//  TitleTableViewDataSource.m
//  TitleSelection
//
//  Created by Joshua Howland on 8/23/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "DataSource.h"


@implementation DataSource

/* 
 
    Number OF Rows in section
    Cell For Row At Index
    Array of Titles
    TtilesAtIndex
 
 */

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self titles].count;

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath  // Tells the data source to return the number of rows in a given section of a table view. (required)
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    UIImage *image1 = [UIImage imageNamed:@"leafz.png"];
    UIImage *image2 = [UIImage imageNamed:@"swirlz.png"];
    UIImage *image3 = [UIImage imageNamed:@"moonz.png"];
    UIImage *image4 = [UIImage imageNamed:@"tetrisz.png"];
    
    
    if (!cell)
    {
        

        cell = [UITableViewCell new];
        
        if ((indexPath.row % 20 ) && (indexPath.row < 0))
        {
            cell.backgroundColor = [UIColor whiteColor];
            cell.textLabel.textColor = [UIColor redColor];
            cell.imageView.image = image3;
            cell.imageView.highlightedImage = image4;
            cell.imageView.clipsToBounds = YES;
            
        }
        else // Negated This Untill Size is Equal.  // Set Widt & Height ThenSet to UIImage // No altertaions After image is set
        {
            cell.backgroundColor = [UIColor whiteColor];
            cell.textLabel.textColor = [UIColor blackColor];
            cell.imageView.image = image4;
            cell.imageView.highlightedImage = image3;
            cell.imageView.clipsToBounds = YES;
        }
        
    }
    cell.textLabel.textAlignment = NSTextAlignmentLeft;
    cell.textLabel.text =  [self titles][indexPath.row]; //Important
    
    return cell;
}





- (NSArray *)titles
{
    return @[@"The Constant Gardener", @"How the West Was Fun", @"Every Which Way But Loose", @"Riding In Cars With Boys", @"It Happened One Night", @"Firday After Next", @"Herbie: Fully Loaded", @"The Owls of GaHoole", @"Surfer Dude", @"The Day After Tomorrow", @"John Carter", @"Octopussy", @"Face Off", @"I Still Know What You Did Last Summer", @"Gigli"];
}

- (NSString *)titleAtIndexPath:(NSIndexPath *)path
{
    
    if (path.row < [self titles].count) //  Number Of  Objects in an Array.
    {
        return [self titles][path.row]; //  The Row Number In A Particular Section
    } else {
        return nil;
    }
}

@end
