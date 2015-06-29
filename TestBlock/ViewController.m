//
//  ViewController.m
//  TestBlock
//
//  Created by Leo on 2015/4/2.
//  Copyright (c) 2015年 leotest. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label3;

@end

@implementation ViewController {
    SecondViewController *sVC;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"mySegue"]) {
        sVC = (SecondViewController *)segue.destinationViewController;
        sVC.delegate = self;
        
        // Creating a weak reference to self
        __weak typeof(self) weakSelf = self;
        sVC.mMyCallBack = ^(NSString *result){
            weakSelf.label3.text = result;
        };
        
        [sVC doSomething:^(NSString *result) {
            weakSelf.label3.text = result;
        }];
    }
}

#pragma mark - myDelegate
-(void)didFinish:(NSString *)result{
    self.label1.text = result;
}
@end
