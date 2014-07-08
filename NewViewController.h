//
//  NewViewController.h
//  KMobile
//
//  Created by Михаил on 07.07.14.
//  Copyright (c) 2014 Misha_Ruzal_Boris. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewDetailsViewController.h"

@interface NewViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UILabel *Rating;
- (IBAction)RatingButton:(id)sender;
@property (nonatomic, strong) NSMutableArray *news;
@end
