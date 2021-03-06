//
//  RCUtil.m
//  oh-my-category
//
//  Created by RoCry on 6/10/13.
//  Copyright (c) 2013 FeN. All rights reserved.
//

#import "RCUtil.h"

NSString * NSStringFromBOOL(BOOL yesOrNo)
{
    return yesOrNo ? @"YES" : @"NO";
}

void RCLogSetup()
{
#ifdef DEBUG
    char *name_chars = getenv("BONJOUR_NAME");
    if (name_chars == NULL) {
        name_chars = "RoCry";
    }
    NSString *name = [NSString stringWithUTF8String:name_chars];
    LoggerSetupBonjour(NULL, NULL, (__bridge CFStringRef)name);
    
    RCLogDefault(@"NSLogger[%s] setup success", name_chars);
#endif
}