//
//  VVTGrapeView.m
//  VerifyViewTips
//
//  Created by KAZUMA Ukyo on 12/07/08.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "VVTGrapeView.h"

@interface VVTGrapeView()
@property(nonatomic,retain) UIToolbar *toolBar;
@end

@implementation VVTGrapeView
@synthesize toolBar = _toolBar;
@synthesize tableView = _tableView;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.toolBar = [[UIToolbar alloc] initWithFrame:CGRectZero];
        [self addSubview:self.toolBar];
        self.tableView = [[UITableView alloc] initWithFrame:CGRectZero];
        [self addSubview:self.tableView];
    }
    return self;
}

- (void)layoutSubviews {
    self.toolBar.frame = CGRectMake(0, 0, 320, 44);
    self.tableView.frame = CGRectMake(0, 44, 320, 416);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
