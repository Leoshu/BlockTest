//
//  SecondViewControllerTests.m
//  TestBlock
//
//  Created by Leo on 2015/4/10.
//  Copyright (c) 2015年 leotest. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "SecondViewController.h"

@interface SecondViewController (Test)
- (void)counting;
@end

@interface SecondViewControllerTests : XCTestCase

@property (nonatomic) SecondViewController *vcToTest;

@end

@implementation SecondViewControllerTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.vcToTest = [[SecondViewController alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

-(void)testCounting {
    [self.vcToTest counting];
}

@end
