//
//  PHProfileInputViewController.m
//  PocketHearty
//
//  Created by 冯 子力 on 13-9-1.
//  Copyright (c) 2013年 清华大学未来医疗兴趣团队心电手机背壳项目组. All rights reserved.
//

#import "PHProfileInputViewController.h"

@interface PHProfileInputViewController ()

@end

@implementation PHProfileInputViewController

@synthesize nameField;
@synthesize ageField;
@synthesize genderSegContrl;

@synthesize nameLabel;
@synthesize ageLabel;
@synthesize genderLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didTapBackgroundArea:(id)sender
{
    [self.nameField resignFirstResponder];
    [self.ageField resignFirstResponder];
    [self.genderSegContrl resignFirstResponder];
}

- (IBAction)genderControlTapped:(id)sender
{
    [self didTapBackgroundArea:sender];
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
}

@end
