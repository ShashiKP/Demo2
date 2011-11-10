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
    NSString *location;//first label
    NSString *detailText;
    NSString *distance;
    NSString *username;
    NSString *commented;//chinmay idea
    NSInteger selectedIndex;//image
    IBOutlet UILabel *detail;
    IBOutlet UILabel *name;
    IBOutlet UILabel *dist;    
    IBOutlet UILabel *place;
    IBOutlet UILabel *comment;//chinmay idea
    IBOutlet UIImageView *outputImage;
}

@property (nonatomic) NSInteger selectedIndex;//image
@property (nonatomic, retain) NSString *location;//first label
@property (nonatomic, retain) NSString *detailText;

@property (nonatomic, retain) NSString *distance;
@property (nonatomic, retain) NSString *commented;//chinmay idea

@property (nonatomic, retain) NSString *username;
@end