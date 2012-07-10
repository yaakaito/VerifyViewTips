//
//  VerifyViewTips - VVTPineAppleViewTest.m
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//
//  Created by: KAZUMA Ukyo
//

#import <GHUnitIOS/GHUnit.h>
#import "VVTPineAppleView.h"
#import <objc/runtime.h>

BOOL isIPad = NO;

@interface VVTPineAppleViewTest : GHViewTestCase
{
    VVTPineAppleView *view;
    Method realUserInterfaceIdiom;
    Method fakeUserInterfaceIdiom;
}
@end

@implementation UIDevice(MockMethods)
- (UIUserInterfaceIdiom)VVTPineAppleViewTestUserInterfaceIdiom {
    if(isIPad) {
        return UIUserInterfaceIdiomPad;
    }
    else {
        return UIUserInterfaceIdiomPhone;
    }
}
@end

@implementation VVTPineAppleViewTest

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
    view = [[VVTPineAppleView alloc] initWithFrame:CGRectZero];
    realUserInterfaceIdiom = class_getInstanceMethod([UIDevice class], @selector(userInterfaceIdiom));
    fakeUserInterfaceIdiom = class_getInstanceMethod([UIDevice class], @selector(VVTPineAppleViewTestUserInterfaceIdiom));
    method_exchangeImplementations(realUserInterfaceIdiom, fakeUserInterfaceIdiom);
}

- (void)tearDown {
    // Run after each test method
    method_exchangeImplementations(fakeUserInterfaceIdiom, realUserInterfaceIdiom);
}

- (void)testPadAfterInitialize
{
    isIPad = YES;
    view.frame = CGRectMake(0, 0, 1024, 768);
    GHVerifyView(view);
}

- (void)testPhoneAfterIntialize
{
    isIPad = NO;
    view.frame = CGRectMake(0, 0, 320, 480);
    GHVerifyView(view);
}
@end
