//
//  VerifyViewTips - VVTGrapeViewTest.m
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//
//  Created by: KAZUMA Ukyo
//

#import <GHUnitIOS/GHUnit.h>
#import "VVTGrapeView.h"
#import "VVTGrapeCell.h"

@interface VVTGrapeViewTest : GHViewTestCase
{
    VVTGrapeView *view;
}
@end

@interface MockGrapeViewDataSoruce : NSObject<UITableViewDelegate>
@end

@implementation VVTGrapeViewTest

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
    view = [[VVTGrapeView alloc] initWithFrame:[UIScreen mainScreen].bounds];
}

- (void)tearDown {
    // Run after each test method
}

- (void)testAfterInitialize {
    GHVerifyView(view);
}

- (void)testSetDataSource {
    MockGrapeViewDataSoruce *dataSource = [[MockGrapeViewDataSoruce alloc] init];
    __weak id dataSourcePtr = dataSource;
    view.tableView.dataSource = dataSourcePtr;
    GHVerifyView(view);
}
@end

@implementation MockGrapeViewDataSoruce

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44.0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"GrapeCell";
    VVTGrapeCell *cell = (VVTGrapeCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(!cell) {
        cell = [[VVTGrapeCell alloc] init];
    }
    
    cell.titleLabel.text = @"TITLE";
    cell.descriptionLabel.text = @"DESC";
    
    return cell;
}

@end
