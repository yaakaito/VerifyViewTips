//
//  VerifyViewTips - VTTSampleViewTest.m
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//
//  Created by: KAZUMA Ukyo
//

#import <GHUnitIOS/GHUnit.h>
#import "VVTSampleView.h"

@interface VTTSampleViewTest : GHViewTestCase
{
    
}
@end

@implementation VTTSampleViewTest

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
}

- (void)tearDown {
    // Run after each test method
}

- (void)testSampleView
{
    VVTSampleView *view = [[VVTSampleView alloc] init];
    view.frame = [UIScreen mainScreen].bounds;
    GHVerifyView(view);
}

@end
