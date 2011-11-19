//
//  Tab2_DetailItemViewController.h
//  Demo2
//
//  Created by jitu keshri on 11/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Tab2_DetailItemViewController : UIViewController
{
    NSString *comment;
    NSInteger commentAvatar;
    IBOutlet UILabel *commentFull;
    IBOutlet UIImageView *commentAvatarFoto;
}

@property (nonatomic) NSInteger commentAvatar;
@property (nonatomic, retain) NSString *comment;

@end