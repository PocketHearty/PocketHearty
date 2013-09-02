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

@synthesize timeLabelShouldHide;
@synthesize timeLabel;

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
    if (timeLabelShouldHide) {
        self.timeLabel.hidden = YES;
    }
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
    if (buttonIndex == 0) {
        MFMailComposeViewController *mailPicker = [[MFMailComposeViewController alloc] init];
        mailPicker.mailComposeDelegate = self;
        
        [mailPicker setSubject:@"我的心电图"];
        NSString *emailBody = @"以下是我的心电图结果：\n";
        [mailPicker setMessageBody:emailBody isHTML:YES];
        
        [self presentViewController:mailPicker animated:YES completion:^{}];
    }
    if (buttonIndex == 1) {
        MFMessageComposeViewController *messagePicker = [[MFMessageComposeViewController alloc] init];
        messagePicker.messageComposeDelegate = self;
        
        [messagePicker setBody:@"我的心电图结果："];
        
        [self presentViewController:messagePicker animated:YES completion:^{}];
    }
}

- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    [self dismissViewControllerAnimated:YES completion:^{}];
}

- (void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result
{
    [self dismissViewControllerAnimated:YES completion:^{}];
}

@end
