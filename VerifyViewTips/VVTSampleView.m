//
//  VVTSampleView.m
//  VerifyViewTips
//
//  Created by KAZUMA Ukyo on 12/07/07.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "VVTSampleView.h"

@interface VVTSampleView()
@property(nonatomic,strong) UILabel *label;
@end

@implementation VVTSampleView

@synthesize label = _label;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.label = [[UILabel alloc] initWithFrame:CGRectZero];
        self.label.text = @"HOGE";
        self.label.textAlignment = UITextAlignmentCenter;
        [self addSubview:self.label];
    }
    return self;
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    self.label.frame = self.frame;
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
