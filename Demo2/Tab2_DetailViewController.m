#import "Tab2_DetailViewController.h"
#import "Tab2_DetailItemViewController.h"
//#import "Tab2_ItemViewController.h"
//#import "Tab2_TableViewController.h"

@implementation Tab2_DetailViewController

// When the view loads, define our data
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Define our test data
    myData = [NSMutableArray arrayWithObjects:
              @"Chasing Amy",
              @"Mallrats",
              @"Dogma",
              @"Clerks",
              @"Jay &amp; Silent Bob Strike Back",
              @"Red State",
              @"Cop Out",
              @"Jersey Girl",
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
    return [myData count];
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
    
    // Get the cell label using its tag and set it
    UILabel *cellLabel = (UILabel *)[cell2 viewWithTag:1];
    [cellLabel setText:[myData objectAtIndex:indexPath.row]];
    
    // get the cell imageview using its tag and set it
    UIImageView *cellImage = (UIImageView *)[cell2 viewWithTag:2];
    [cellImage setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg", indexPath.row]]];
    
    return cell2;
}

// Do some customisation of our new view when a table item has been selected
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Make sure we're referring to the correct segue
    if ([[segue identifier] isEqualToString:@"ShowSelectedMovie"]) {
        
        // Get reference to the destination view controller
        Tab2_DetailItemViewController *vc = [segue destinationViewController];
//        Tab2_ItemViewController *vc2 = [segue destinationViewController];
        
        // get the selected index
        NSInteger selectedIndex = [[self.tableView indexPathForSelectedRow] row];
        
        // Pass the name and index of our film
        [vc setSelectedItem:[NSString stringWithFormat:@"%@", [myData objectAtIndex:selectedIndex]]];
        [vc setSelectedIndex:selectedIndex];
        //directs the outputs on the viewcontroller to specific section Ex:label or image
        
//        [vc2 setLocation:[NSString stringWithFormat:@"%@", [place objectAtIndex:selectedIndex]]];
//        [vc2 setSelectedIndex:selectedIndex];
//        [vc2 setUsername:[NSString stringWithFormat:@"%@", [username objectAtIndex:selectedIndex]]];
//        [vc2 setDistance:[NSString stringWithFormat:@"%@", [distance objectAtIndex:selectedIndex]]];
//        [vc2 setDetailText:[NSString stringWithFormat:@"%@",[detail objectAtIndex: selectedIndex]]];

    }
}


@end