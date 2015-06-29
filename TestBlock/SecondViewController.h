//
//  SecondVCViewController.h
//  TestBlock
//
//  Created by Leo on 2015/4/2.
//  Copyright (c) 2015年 leotest. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^myCallBack)(NSString *result);

@protocol myDelegate <NSObject>
- (void)didFinish:(NSString *)result;
@end

@interface SecondViewController : UIViewController

@property (nonatomic, weak) id<myDelegate> delegate;
@property (nonatomic, strong)myCallBack mMyCallBack;

-(void)doSomething:(myCallBack)callBack;

@end
