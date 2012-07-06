//
//  VVTOrangeView.m
//  VerifyViewTips
//
//  Created by KAZUMA Ukyo on 12/07/07.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "VVTOrangeView.h"

@interface VVTOrangeView()
@property(nonatomic, strong) UILabel *title;
@end

@implementation VVTOrangeView

@synthesize title = _title;
@synthesize value1 = _value1;
@synthesize value2 = _value2;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        // Initialization code
        self.title = [[UILabel alloc] initWithFrame:CGRectZero];
        self.title.text = @"おれんじ";
        [self addSubview:self.title];
        self.value1 = [[UILabel alloc] initWithFrame:CGRectZero];
        [self addSubview:self.value1];
        self.value2 = [[UILabel alloc] initWithFrame:CGRectZero];
        [self addSubview:self.value2];
    }
    return self;
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    self.title.frame = CGRectMake(0, 0, 320, 40);
    self.value1.frame = CGRectMake(0, 50, 320, 40);
    self.value2.frame = CGRectMake(0, 100, 320, 40);
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
