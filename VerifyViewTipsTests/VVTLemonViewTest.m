//
//  VerifyViewTips - VVTLemonViewTest.m
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//
//  Created by: KAZUMA Ukyo
//

#import <GHUnitIOS/GHUnit.h>
#import "VVTLemonView.h"

@interface VVTLemonViewTest : GHViewTestCase
{
    VVTLemonView *view;
}
@end

@implementation VVTLemonViewTest

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
    view = [[VVTLemonView alloc] initWithFrame:[UIScreen mainScreen].bounds];
}

- (void)tearDown {
    // Run after each test method
}

- (void)testAfterInitialized {
    GHVerifyView(view);
}

- (void)testAdd3Strings {
    [view.items addObjectsFromArray:[NSArray arrayWithObjects:@"HOGE", @"FUGA", @"PIYO", nil]];
    [view resetItems];
    GHVerifyView(view);
}

- (void)testAdd5Strings {
    [view.items addObjectsFromArray:[NSArray arrayWithObjects:@"まん！", @"まん！", @"満足！",@"5本！", @"満足！", nil]];
    [view resetItems];
    GHVerifyView(view);
}
@end
