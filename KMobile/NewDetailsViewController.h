//
//  NewDetailsViewController.h
//  KMobile
//
//  Created by Михаил on 07.07.14.
//  Copyright (c) 2014 Misha_Ruzal_Boris. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NewDetailsViewController;

@protocol NewDetailsViewControllerDelegate

- (void)newDetailsViewControllerDidCancel:(NewDetailsViewController *)controller;
- (void)newDetailsViewControllerDidSave:(NewDetailsViewController *)controller;
@end

@interface NewDetailsViewController : UITableViewController
@property (nonatomic, weak) id  delegate;
@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
- (IBAction)cancel:(id)sender;
- (IBAction)done:(id)sender;
@end

@class New;
@protocol NewDetailsViewControllerDelegate
- (void)newDetailsViewControllerDidCancel: (NewDetailsViewController *)controller;
- (void)newDetailsViewController:(NewDetailsViewController *)controller
                       didAddNew:(New *)new;
@end
