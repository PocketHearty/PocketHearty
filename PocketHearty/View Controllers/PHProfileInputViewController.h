//
//  PHProfileInputViewController.h
//  PocketHearty
//
//  Created by 冯 子力 on 13-9-1.
//  Copyright (c) 2013年 清华大学未来医疗兴趣团队心电手机背壳项目组. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "PHLogger.h"

@interface PHProfileInputViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, strong) IBOutlet UITextField *nameField;
@property (nonatomic, strong) IBOutlet UITextField *ageField;
@property (nonatomic, strong) IBOutlet UISegmentedControl *genderSegContrl;

@property (nonatomic, strong) IBOutlet UILabel *nameLabel;
@property (nonatomic, strong) IBOutlet UILabel *ageLabel;
@property (nonatomic, strong) IBOutlet UILabel *genderLabel;

- (IBAction)backgroundAreaTapped:(id)sender;
- (IBAction)saveButtonPressed:(id)sender;

@end
