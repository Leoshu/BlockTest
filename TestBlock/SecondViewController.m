//
//  SecondVCViewController.m
//  TestBlock
//
//  Created by Leo on 2015/4/2.
//  Copyright (c) 2015年 leotest. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label2;

@end

@implementation SecondViewController {
    myCallBack singleCallBack;
}

@synthesize mMyCallBack;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.delegate didFinish:@"YA~YA~"];
    mMyCallBack(@"Please wait.");
}

-(void)doSomething:(myCallBack)callBack {
    singleCallBack = callBack;
    [NSThread detachNewThreadSelector:@selector(counting) toTarget:self withObject:nil];
}

-(void)counting {
    for (int i = 0; i < 10000; i++) {
        NSLog(@"%d", i);
    }
    if (singleCallBack) {
        singleCallBack(@"I do it done!");
    }
}

@end
