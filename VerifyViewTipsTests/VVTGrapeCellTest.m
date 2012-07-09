//
//  VerifyViewTips - VVTGrapeCellTest.m
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//
//  Created by: KAZUMA Ukyo
//

#import <GHUnitIOS/GHUnit.h>
#import "VVTGrapeCell.h"

@interface VVTGrapeCellTest : GHViewTestCase
{
    VVTGrapeCell *cell;
}
@end

@implementation VVTGrapeCellTest

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
    cell = [[VVTGrapeCell alloc] init];
    cell.frame = CGRectMake(0, 0, 320, 44);
    // Run before each test method
}

- (void)tearDown {
    // Run after each test method
}

- (void)testAfterInitialized {
    GHVerifyView(cell);
}

- (void)testSetTitle {
    cell.titleLabel.text = @"タイトル";
    GHVerifyView(cell);
}

- (void)testSetDescription {
    cell.descriptionLabel.text = @"説明";
    GHVerifyView(cell);
}

- (void)testSetTitleAndDescription {
    cell.titleLabel.text = @"タイトル";
    cell.descriptionLabel.text = @"説明";
    GHVerifyView(cell);
}

@end
