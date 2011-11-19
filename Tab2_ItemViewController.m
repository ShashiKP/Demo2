//
//  Tab2_ItemViewController.m
//  Demo2
//
//  Created by jitu keshri on 10/28/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Tab2_ItemViewController.h"

@implementation Tab2_ItemViewController

@synthesize selectedIndex, selectedItem;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [outputLabel setText:selectedItem];
    [outputImage setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg", selectedIndex]]];
}

@end