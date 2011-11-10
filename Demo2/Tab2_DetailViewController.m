//
//  Tab2_DetailViewController.m
//  Demo2
//
//  Created by jitu keshri on 11/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Tab2_DetailViewController.h"
#import "Tab2_DetailItemViewController.h"

@implementation Tab2_DetailViewController

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
    static NSString *CellIdentifier2 = @"CellIdentifier2";
    
    // Create or reuse a cell
    UITableViewCell *cell2 = [tableView dequeueReusableCellWithIdentifier:CellIdentifier2];
    if (cell2 == nil) {
        cell2 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier2];
    }
    
    // Get the cell label using it's tag and set it
    UILabel *cellLabel = (UILabel *)[cell2 viewWithTag:2];
    [cellLabel setText:[comment objectAtIndex:indexPath.row]];
    
    // get the cell imageview using it's tag and set it
    UIImageView *cellImage = (UIImageView *)[cell2 viewWithTag:1];
    [cellImage setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg", indexPath.row]]];
    
    return cell2;
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