//
//  NewDetailsViewController.h
//  KMobile
//
//  Created by Михаил on 07.07.14.
//  Copyright (c) 2014 Misha_Ruzal_Boris. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "New.h"

@class NewDetailsViewController;

@interface NewDetailsViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UITextView *nameTextField;
@property (nonatomic, weak) id  delegate;
- (IBAction)cancel:(id)sender;
- (IBAction)done:(id)sender;
@end

@protocol NewDetailsViewControllerDelegate
- (void)newDetailsViewControllerDidCancel: (NewDetailsViewController *)controller;
- (void)newDetailsViewController:(NewDetailsViewController *)controller didAddNew:(New *)new;
@end
