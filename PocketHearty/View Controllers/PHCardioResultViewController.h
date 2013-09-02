//
//  PHCardioResultViewController.h
//  PocketHearty
//
//  Created by 冯 子力 on 13-9-2.
//  Copyright (c) 2013年 清华大学未来医疗兴趣团队心电手机背壳项目组. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

#import "PHLogger.h"

@interface PHCardioResultViewController : UIViewController <UIActionSheetDelegate, MFMailComposeViewControllerDelegate, MFMessageComposeViewControllerDelegate>

@property (nonatomic, strong) IBOutlet UILabel *timeLabel;

@property (nonatomic) BOOL timeLabelShouldHide;

- (IBAction)shareButtonPressed:(id)sender;
- (IBAction)saveButtonPressed:(id)sender;

@end
