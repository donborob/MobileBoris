//
//  NewViewController.m
//  KMobile
//
//  Created by Михаил on 07.07.14.
//  Copyright (c) 2014 Misha_Ruzal_Boris. All rights reserved.
//

#import "NewViewController.h"
#import "New.h"
#import "NewCell.h"

@interface NewViewController ()
@end

@implementation NewViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

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

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [self.news count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	NewCell *cell = (NewCell *)[tableView
                                dequeueReusableCellWithIdentifier:@"NewCell"];
	New *new = [self.news objectAtIndex:indexPath.row];
	cell.textLabel.text = new.text;
    cell.nameLabel.text = new.name;
    cell.rating.text = [NSString stringWithFormat:@"%i", new.rating];
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.news removeObjectAtIndex:indexPath.row];
		[tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

- (void)newDetailsViewController: (NewDetailsViewController *)controller didAddNew:(New *)new
{
	[self.news addObject:new];
	NSIndexPath *indexPath = [NSIndexPath indexPathForRow:[self.news count] - 1 inSection:0];
	[self.tableView insertRowsAtIndexPaths:
     [NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
	[self dismissViewControllerAnimated:YES completion:nil];
}

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.identifier isEqualToString:@"AddNew"])
	{
		UINavigationController *navigationController = segue.destinationViewController;
		NewDetailsViewController *newDetailsViewController = [[navigationController viewControllers] objectAtIndex:0];
		newDetailsViewController.delegate = self;
	}
}


#pragma mark - NewDetailsViewControllerDelegate
- (void)newDetailsViewControllerDidCancel:(NewDetailsViewController *)controller
{
	[self dismissViewControllerAnimated:YES completion:nil];
}
- (void)newDetailsViewControllerDidSave:(NewDetailsViewController *)controller
{
	[self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)RatingButton:(UIButton *)sender {
    
}
@end
