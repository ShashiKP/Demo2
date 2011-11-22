//
//  Tab2_TableViewController.m
//  Demo2
//
//  Created by jitu keshri on 10/28/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Tab2_TableViewController.h"
#import "Tab2_ItemViewController.h"

@implementation Tab2_TableViewController

// When the view loads, define our data
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Define our test data
    place= [NSMutableArray arrayWithObjects:
              @"C A", 
              @"M", 
              @"D", 
              @"C", 
              @"J & S B S B",
              @"R S",
              @"C O",
              @"J G",
              nil];
    detail = [NSMutableArray arrayWithObjects:
                    @"Chasing Amy film directed by Kevin Smith IMDB rating 7.2", 
                    @"Mallrats film directed by Kevin Smith IMDB rating 7.1", 
                    @"Dogma film directed by Kevin Smith IMDB rating 6.9", 
                    @"Clerks film directed by Kevin Smith IMDB rating 6.7", 
                    @"Jay & Silent Bob Strike Back film directed by Kevin Smith IMDB rating 7.3",
                    @"Red State film directed by Kevin Smith IMDB rating 7.8",
                    @"Cop Out film directed by Kevin Smith IMDB rating 7.5",
                    @"Jersey Girl film directed by Kevin Smith IMDB rating 6.2",
                    nil];
   
    dist = [NSMutableArray arrayWithObjects:
                      @"2KM at:", 
                       @"3KM at:", 
                      @"2KM at:", 
                      @"1KM at:", 
                      @"5KM at:",
                      @"2KM at:",
                      @"3KM at:",
                      @"1KM at:",
                      nil];
    name = [NSMutableArray arrayWithObjects:
                       @"Ronak", 
                       @"Pravasis", 
                       @"Chinmay", 
                       @"Bharat", 
                       @"Sairam",
                       @"Shashi",
                       @"Sameer",
                       @"Prateek",
                      nil]; 
    //chinmay idea
    
    commented = [NSMutableArray arrayWithObjects:
                 @"Ronak", 
                 @"Pravasis", 
                 @"Chinmay", 
                 @"Bharat", 
                 @"Sairam",
                 @"Shashi",
                 @"Sameer",
                 @"Prateek",
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
    return [place count];
}

// Return a cell for the table
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // A cell identifier which matches our identifier in IB
    static NSString *CellIdentifier = @"CellIdentifier";
    
    
    // Create or reuse a cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
        
     // ************new cell identifier values*************

        
      /*  static NSString *CellIdentifier2 = @"CellIdentifier2";
        
        UITableViewCell *cell2 = [tableView dequeueReusableCellWithIdentifier:CellIdentifier2];
        if (cell2 == nil) {
            cell2 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier2];*/
    //*************
        }
    
    // Get the cell label using it's tag and set it
    UILabel *cellLabel = (UILabel *)[cell viewWithTag:1];
    [cellLabel setText:[place
                        objectAtIndex:indexPath.row]];
  
    UILabel *cellLabel2 = (UILabel *)[cell viewWithTag:2];
    [cellLabel2 setText:[detail objectAtIndex:indexPath.row]];
      
    UILabel *cellLabel3 = (UILabel *)[cell viewWithTag:5];
    [cellLabel3 setText:[dist objectAtIndex:indexPath.row]];
    
     UILabel *comment = (UILabel *)[cell viewWithTag:7];
    [comment setText:[commented  objectAtIndex:indexPath.row]]; 
                                   
                                   
    UILabel *cellLabel5 = (UILabel *)[cell viewWithTag:4];
    [cellLabel5 setText:[name objectAtIndex:indexPath.row]];
    
    // get the cell imageview using it's tag and set it
    UIImageView *cellImage = (UIImageView *)[cell viewWithTag:6];
    [cellImage setImage:[UIImage imageNamed:[NSString stringWithFormat:@"0.jpg", indexPath.row]]];
        //Chinmay idea
    
    UIImageView *cellImage2 = (UIImageView *)[cell viewWithTag:3];
    [cellImage2 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg", indexPath.row]]];
    
        //*************new cell identifier values*************
        
        // Get the cell label using it's tag and set it
   
        
     /*   UILabel *secondViewLabel = (UILabel *)[cell2 viewWithTag:2];
        [secondViewLabel setText:[username objectAtIndex:indexPath.row]];
        
        // get the cell imageview using it's tag and set it
    
        UIImageView *secondViewImage = (UIImageView *)[cell2 viewWithTag:1];
        [secondViewImage setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg", indexPath.row]]];
    */
    return cell;
}

// Do some customisation of our new view when a table item has been selected
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Make sure we're referring to the correct segue
    if ([[segue identifier] isEqualToString:@"ShowSelectedMovie"]) {
        
        // Get reference to the destination view controller
        Tab2_ItemViewController *vc = [segue destinationViewController];
        
        //*********new view info***********
        //Tab2_ItemViewController *vc2= [segue destinationViewController];
        
        // get the selected index
        NSInteger selectedIndex = [[self.tableView indexPathForSelectedRow] row];
        
        // Pass the name and index of our film
        
        
        
        
        
        //directs the outputs on the viewcontroller to specific section Ex:label or image
        
        [vc setLocation:[NSString stringWithFormat:@"%@", [place objectAtIndex:selectedIndex]]];
        [vc setSelectedIndex:selectedIndex];
        [vc setUsername:[NSString stringWithFormat:@"%@", [name objectAtIndex:selectedIndex]]];
        [vc setDistance:[NSString stringWithFormat:@"%@", [dist objectAtIndex:selectedIndex]]];
       [vc setDetailText:[NSString stringWithFormat:@"%@",[detail objectAtIndex: selectedIndex]]];
        
      //  [vc2 setUsername:[NSString stringWithFormat:@"%@", [username objectAtIndex:selectedIndex]]];
    }
}

@end