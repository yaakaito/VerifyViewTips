//
//  VerifyViewTips - VVTOrangeViewTest.m
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//
//  Created by: KAZUMA Ukyo
//

#import <GHUnitIOS/GHUnit.h>
#import "VVTOrangeView.h"

@interface VVTOrangeViewTest : GHViewTestCase
{
    VVTOrangeView *view;
}
@end

@implementation VVTOrangeViewTest

- (BOOL)shouldRunOnMainThread {
    // By default NO, but if you have a UI test or test dependent on running on the main thread return YES
    return NO;
}

- (void)setUpClass {
    // Run at start of all tests in the class
}

- (void)tearDownClass {
    // Run at end of all tests in the class
}

- (void)setUp {
    // Run before each test method
    view = [[VVTOrangeView alloc] initWithFrame:[UIScreen mainScreen].bounds];
}

- (void)tearDown {
    // Run after each test method
}

- (void)testAfterInitialized {
    GHVerifyView(view);
}

- (void)testSetValue1 {
    view.value1.text = @"HOGE";
    GHVerifyView(view);
}

- (void)testSetValue2 {
    view.value2.text = @"FUGA";
    GHVerifyView(view);
}

- (void)testSetValue1AndValue2 {
    view.value1.text = @"HOGEHOGE";
    view.value2.text = @"FUGAFUGA";
    GHVerifyView(view);
}

@end
