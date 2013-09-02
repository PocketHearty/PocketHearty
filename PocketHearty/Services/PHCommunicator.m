//
//  PHCommunicator.m
//  PocketHearty
//
//  Created by 冯 子力 on 13-8-26.
//  Copyright (c) 2013年 清华大学未来医疗兴趣团队心电手机背壳项目组. All rights reserved.
//

#import "PHCommunicator.h"

@implementation PHCommunicator

- (id)init
{
    self = [super init];
    if (self) {
        mProcessor = [[AudioProcessor alloc] init];
        [self initializeComunication];
    }
    return self;
}

- (void)initializeComunication
{
    
}

@end
