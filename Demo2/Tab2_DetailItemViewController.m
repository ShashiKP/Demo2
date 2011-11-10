//
//  Tab2_DetailItemViewController.m
//  Demo2
//
//  Created by jitu keshri on 11/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//
#import "Tab2_DetailItemViewController.h"

@implementation Tab2_DetailItemViewController

@synthesize commentAvatar, comment;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [commentFull setText:comment];
    [commentAvatarFoto setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg", commentAvatar]]];
}

@end