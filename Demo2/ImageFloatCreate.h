//
//  ImageFloat.h
//  Demo2
//
//  Created by jitu keshri on 11/23/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageFloatCreate : UIViewController 
<UIImagePickerControllerDelegate , UINavigationControllerDelegate>

{
    
    
    
    UIImagePickerController *picker;
    
    IBOutlet UIImageView * selectedImage;
    
}   

@property (nonatomic, retain) UIImageView * selectedImage;

- (IBAction) buttonClicked;
@end