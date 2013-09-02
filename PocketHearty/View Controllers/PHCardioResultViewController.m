//
//  PHCardioResultViewController.m
//  PocketHearty
//
//  Created by 冯 子力 on 13-9-2.
//  Copyright (c) 2013年 清华大学未来医疗兴趣团队心电手机背壳项目组. All rights reserved.
//

#import "PHCardioResultViewController.h"

@interface PHCardioResultViewController ()

@end

@implementation PHCardioResultViewController

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

- (IBAction)shareButtonPressed:(id)sender
{
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:nil
                                                             delegate:self
                                                    cancelButtonTitle:@"取消"
                                               destructiveButtonTitle:nil
                                                    otherButtonTitles:@"通过邮件分享", @"通过短信分享", nil];
    [actionSheet showInView:self.view];
}

- (IBAction)saveButtonPressed:(id)sender
{    
    [self.navigationController popToRootViewControllerAnimated:YES];
}

#pragma mark UIActionSheetDelegate methods

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    // TEMP
    if (buttonIndex == 0) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"开发者临时消息" message:@"已按下通过邮件分享按钮" delegate:self cancelButtonTitle:@"关闭消息" otherButtonTitles:nil];
        [alertView show];
    }
    if (buttonIndex == 1) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"开发者临时消息" message:@"已按下通过短信分享按钮" delegate:self cancelButtonTitle:@"关闭消息" otherButtonTitles:nil];
        [alertView show];
    }
}

@end
