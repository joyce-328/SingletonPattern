//
//  SAlertView.h
//  SingletonPattern
//
//  Created by Eveian on 2014/12/28.
//  Copyright (c) 2014年 Eveian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SAlertView : UIAlertView
+ (SAlertView*)sharedView;

-(void) showMessage:(NSString*)msg;
@end
