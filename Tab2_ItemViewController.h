//
//  Tab2_ItemViewController.h
//  Demo2
//
//  Created by jitu keshri on 10/28/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface Tab2_ItemViewController : UIViewController
{
    NSString *selectedItem;
    NSInteger selectedIndex;
    IBOutlet UILabel *outputLabel;
    IBOutlet UIImageView *outputImage;
}

@property (nonatomic) NSInteger selectedIndex;
@property (nonatomic, retain) NSString *selectedItem;

@end