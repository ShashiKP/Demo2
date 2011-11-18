#import <UIKit/UIKit.h>

@interface Tab2_DetailItemViewController : UIViewController
{
    NSString *selectedItem;
    NSInteger selectedIndex;
    
    IBOutlet UILabel *outputLabel;
    IBOutlet UIImageView *outputImage;
   
}

@property (nonatomic) NSInteger selectedIndex;
@property (nonatomic, retain) NSString *selectedItem;



@end