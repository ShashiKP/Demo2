//
//  Tab2_DetailViewController.m
//  Demo2
//
//  Created by jitu keshri on 11/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ImageViewHome.h"
#import "Tab2_DetailItemViewController.h"

@implementation ImageViewHome

// When the view loads, define our data
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Define our test data
    comment = [NSMutableArray arrayWithObjects:
               @"C A detail view ", 
               @"M detail view ", 
               @"D detail view ", 
               @"C detail view ", 
               @"J & S B S B detail view ",
               @"R S detail view ",
               @"C Odetail view ",
               @"J G detail view ",
               nil];
}

// Return number of sections in table (always 1 for this demo!)
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

// Return the amount of items in our table (the total items in our array above)
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [comment count];
}

// Return a cell for the table
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // A cell identifier which matches our identifier in IB
    static NSString *CellIdentifier3 = @"CellIdentifier3";
    
    // Create or reuse a cell
    UITableViewCell *cell3 = [tableView dequeueReusableCellWithIdentifier:CellIdentifier3];
    if (cell3 == nil) {
        cell3 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier3];
    }
    
    // Get the cell label using it's tag and set it
    UILabel *cellLabel = (UILabel *)[cell3 viewWithTag:1];
    [cellLabel setText:[comment objectAtIndex:indexPath.row]];
    
    //image me ungli
    
    
    
    // get the cell imageview using it's tag and set it
    UIImageView *cellImage = (UIImageView *)[cell3 viewWithTag:2];
    [cellImage setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg", indexPath.row]]];
    
    //image me ungli
    
    
    UILabel *cellLabel2 = (UILabel *)[cell3 viewWithTag:4];
    [cellLabel2 setText:[comment objectAtIndex:indexPath.row]];
    
    
    UIImageView *cellImage2 = (UIImageView *)[cell3 viewWithTag:3];
    [cellImage2 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"2.jpg", indexPath.row]]];
    
    //image ungli 2nd
    
    UILabel *cellLabel3 = (UILabel *)[cell3 viewWithTag:5];
    [cellLabel3 setText:[comment objectAtIndex:indexPath.row]];
    
    
    UIImageView *cellImage3 = (UIImageView *)[cell3 viewWithTag:6];
    [cellImage3 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"3.jpg", indexPath.row]]];
    
    
    return cell3;
}

// Do some customisation of our new view when a table item has been selected
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Make sure we're referring to the correct segue
    if ([[segue identifier] isEqualToString:@"ShowSelectedMovie2"]) {
        
        // Get reference to the destination view controller
        Tab2_DetailItemViewController *vc = [segue destinationViewController];
        
        // get the selected index
        NSInteger selectedIndex = [[self.tableView indexPathForSelectedRow] row];
        
        // Pass the name and index of our film
        [vc setComment:[NSString stringWithFormat:@"%@", [comment objectAtIndex:selectedIndex]]];
        [vc setCommentAvatar:selectedIndex];
    }
}

@end