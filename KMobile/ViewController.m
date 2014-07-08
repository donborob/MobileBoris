//
//  ViewController.m
//  KMobile
//
//  Created by Михаил on 07.07.14.
//  Copyright (c) 2014 Misha_Ruzal_Boris. All rights reserved.
//

#import "ViewController.h"
#import "New.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *Text;
@property (weak, nonatomic) IBOutlet UIButton *Button;
- (IBAction)Button:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)Button:(id)sender {
    //self.new.rating +=1;
}

@end
