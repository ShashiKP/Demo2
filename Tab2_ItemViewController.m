//
//  Tab2_ItemViewController.m
//  Demo2
//
//  Created by jitu keshri on 10/28/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Tab2_ItemViewController.h"




@implementation Tab2_ItemViewController

NSString *distance;

NSString *username;
NSString *location;
NSString *detailText;


@synthesize selectedIndex, location, detailText, distance, username,commented ;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Set value to all the controls.
    // Here we are mapping all the UX item to a variable in the object.
    
    [detail setText:detailText];
    [outputImage setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg", selectedIndex]]];
    [name setText:username];
    [dist setText:distance];
    [place setText:location];
    //chinmay idea
    [comment setText:commented];
    
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
    
    distance = [NSMutableArray arrayWithObjects:
                @"2KM at:", 
                @"3KM at:", 
                @"2KM at:", 
                @"1KM at:", 
                @"5KM at:",
                @"2KM at:",
                @"3KM at:",
                @"1KM at:",
                nil];
    username = [NSMutableArray arrayWithObjects:
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


/*
- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/
- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier2 = @"Cell2";
    //static NSString *CellIdentifier2 = @"Cell2";
    
    UITableViewCell *cell2 = [tableView dequeueReusableCellWithIdentifier:CellIdentifier2];
    if (cell2 == nil) {
        cell2= [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier2];}
    
    // Get the cell label using it's tag and set it
    UILabel *cellLabel = (UILabel *)[cell2 viewWithTag:5];
    [cellLabel setText:[place
                        objectAtIndex:indexPath.row]];
    
    UILabel *cellLabel2 = (UILabel *)[cell2 viewWithTag:6];
    [cellLabel2 setText:[detail objectAtIndex:indexPath.row]];
    
    UILabel *cellLabel3 = (UILabel *)[cell2 viewWithTag:4];
    [cellLabel3 setText:[distance objectAtIndex:indexPath.row]];
    
//    UILabel *comment = (UILabel *)[cell2 viewWithTag:3];
//    [comment_vc setText:[commented_vc  objectAtIndex:indexPath.row]]; 
//    
    
    UILabel *cellLabel5 = (UILabel *)[cell2 viewWithTag:2];
    [cellLabel5 setText:[username objectAtIndex:indexPath.row]];
    
    // get the cell imageview using it's tag and set it
   
    
    UIImageView *cellImage2 = (UIImageView *)[cell2 viewWithTag:1];
    [cellImage2 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg", indexPath.row]]];
    
 
    
    // Configure the cell...
    
    return cell2;
      
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
