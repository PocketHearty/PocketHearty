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
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backgroundAreaTapped:(id)sender
{
    [self.nameField resignFirstResponder];
    [self.ageField resignFirstResponder];
    [self.genderSegContrl resignFirstResponder];
}

- (IBAction)saveButtonPressed:(id)sender
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"开发者临时消息" message:@"已按下保存按钮" delegate:self cancelButtonTitle:@"关闭消息" otherButtonTitles:nil];
    [alertView show];
    
    // TODO: save user data into persistent storage
}

- (void)keyboardWillShow:(NSNotification *)notification
{
    // Get keyboard bounds to calculate offset
    NSValue *keyboardBoundsValue = [[notification userInfo] objectForKey:UIKeyboardFrameEndUserInfoKey];
    CGRect keyboardBounds;
    [keyboardBoundsValue getValue:&keyboardBounds];
    
    // Animation preparation
    [UIView beginAnimations:@"profileInputViewKeyboardShowAnimation" context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationDuration:0.3];
    
    // Animation
    CGRect newFrame = CGRectMake(self.view.frame.origin.x,
                          - [[UIApplication sharedApplication] delegate].window.frame.size.height + keyboardBounds.origin.y + 180,
                                 self.view.frame.size.width,
                                 self.view.frame.size.height);
    self.view.frame = newFrame;
    
    // Animation commit
    [UIView commitAnimations];
}

- (void)keyboardWillHide:(NSNotification *)notification
{
    // Animation preparation
    [UIView beginAnimations:@"profileInputViewKeyboardHideAnimation" context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationDuration:0.3];
    
    // Animation
    CGRect newFrame = CGRectMake(self.view.frame.origin.x, 0,
                                 self.view.frame.size.width,
                                 self.view.frame.size.height);
    self.view.frame = newFrame;
    
    // Animation commit
    [UIView commitAnimations];
}

@end
