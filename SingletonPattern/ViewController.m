//
//  ViewController.m
//  SingletonPattern
//
//  Created by Eveian on 2014/12/28.
//  Copyright (c) 2014年 Eveian. All rights reserved.
//

#import "ViewController.h"
#import "SAlertView.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) showAlertMessage:(NSString*)msg{
    UIAlertView* alertView  = [[UIAlertView alloc] initWithTitle:nil message:msg delegate:nil cancelButtonTitle:nil otherButtonTitles:nil, nil];
    [alertView show];
    [alertView dismissWithClickedButtonIndex:0 animated:YES];
}

-(IBAction)buttonHandlers:(UIButton*)sender{
    if (sender.tag == 100) {
        [[SAlertView sharedView] showMessage:@"Hello"];
    }
    else if (sender.tag == 101){
        [self showAlertMessage:@"Hello"];
    }
}
@end
