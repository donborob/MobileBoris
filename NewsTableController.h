//
//  NewViewController.h
//  KMobile
//
//  Created by Михаил on 07.07.14.
//  Copyright (c) 2014 Misha_Ruzal_Boris. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewAddViewController.h"

@interface NewViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UILabel *Rating;
- (IBAction)RatingButton:(id)sender;
@property (nonatomic, strong) NSMutableArray *news;
@end

@protocol NewDetailsViewControllerDelegate
- (void)newDetailsViewControllerDidCancel: (NewDetailsViewController *)controller;
- (void)newDetailsViewController:(NewDetailsViewController *)controller didAddNew:(New *)new;
@end

