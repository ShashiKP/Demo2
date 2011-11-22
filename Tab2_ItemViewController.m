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
}

@end