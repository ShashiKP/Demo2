#import "Tab2_DetailItemViewController.h"

@implementation Tab2_DetailItemViewController

@synthesize selectedIndex, selectedItem;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [outputLabel setText:selectedItem];
    [outputImage setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg", selectedIndex]]];
}


@end