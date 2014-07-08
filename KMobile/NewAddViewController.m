//
//  NewDetailsViewController.m
//  KMobile
//
//  Created by Михаил on 07.07.14.
//  Copyright (c) 2014 Misha_Ruzal_Boris. All rights reserved.
//

#import "NewAddViewController.h"
#import "New.h"

@interface NewDetailsViewController ()

@end

@implementation NewDetailsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancel:(id)sender
{
	[self.delegate newDetailsViewControllerDidCancel:self];
}
- (IBAction)done:(id)sender
{
	New *new = [[New alloc] init];
	new.name = @"Аноним";
	new.text = self.nameTextField.text;;
	new.rating = 0;
    [self.delegate newDetailsViewController:self didAddNew:new];
    
}
@end
