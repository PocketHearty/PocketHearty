//
//  PHAnalyzer.h
//  PocketHearty
//
//  Created by 冯 子力 on 13-8-26.
//  Copyright (c) 2013年 清华大学未来医疗兴趣团队心电手机背壳项目组. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "PHCommunicator.h"
#import "PHLogger.h"

@protocol PHAnalyzerDelegate <NSObject>

- (void)didRecognizedIncomingCardioSignal;

@end

@interface PHAnalyzer : NSObject
{
    
}

- (void)startMonitoringIncomingCardioSignal;

@end
