//
//  SAlertView.m
//  SingletonPattern
//
//  Created by Eveian on 2014/12/28.
//  Copyright (c) 2014年 Eveian. All rights reserved.
//

#import "SAlertView.h"

@implementation SAlertView

+ (SAlertView*)sharedView {
    static SAlertView *sharedInstance = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

-(void) showMessage:(NSString*)msg{
    SAlertView * alert = [SAlertView sharedView];
    [alert setMessage:msg];
    [alert show];
    [alert dismissWithClickedButtonIndex:0 animated:YES];
}
@end
