//
//  PHLogger.h
//  PocketHearty
//
//  Created by 冯 子力 on 13-8-26.
//  Copyright (c) 2013年 清华大学未来医疗兴趣团队心电手机背壳项目组. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "PHCardioRecord.h"

@interface PHLogger : NSObject
{
    PHCardioRecord *mRecord;
}

@property (retain, nonatomic) PHCardioRecord *record;

@end
