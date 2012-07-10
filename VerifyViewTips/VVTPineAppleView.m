//
//  VVTPineAppleView.m
//  VerifyViewTips
//
//  Created by KAZUMA Ukyo on 12/07/10.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "VVTPineAppleView.h"

@interface VVTPineAppleView()
@property(nonatomic,strong) UILabel *label;
@end

@implementation VVTPineAppleView

@synthesize label = _label;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor whiteColor];
        self.label = [[UILabel alloc] initWithFrame:CGRectZero];
        self.label.text = @"HOGE";
        self.label.textAlignment = UITextAlignmentCenter;
        [self addSubview:self.label];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    if([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        // iPadのときは一部に表示
        self.label.frame = CGRectMake(0, 0, 200, 200);
    }
    else {
        // iPhoneの時は全体に表示
        self.label.frame = self.frame;
    }
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
