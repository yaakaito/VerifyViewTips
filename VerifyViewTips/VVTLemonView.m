//
//  VVTLemonView.m
//  VerifyViewTips
//
//  Created by KAZUMA Ukyo on 12/07/07.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "VVTLemonView.h"

@interface VVTLemonView()
@property(nonatomic,strong) NSMutableArray *labels;
@property(nonatomic,strong) UILabel *footer;
@end

@implementation VVTLemonView
@synthesize items = _items;
@synthesize labels = _labels;
@synthesize footer = _footer;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor whiteColor];
        self.items = [NSMutableArray array];
        self.labels = [NSMutableArray array];
        self.footer = [[UILabel alloc] initWithFrame:CGRectZero];
        self.footer.text = @"れもんだよ";
        [self addSubview:self.footer];
    }
    return self;
}

- (void)resetItems {
    
    [self.labels removeAllObjects];
    
    for (NSString *item in self.items) {
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
        label.text = item;
        [self.labels addObject:label];
        [self addSubview:label];
    }
}

- (void)layoutSubviews {
    
    for(NSUInteger i = 0; i < [self.labels count]; i++) {
        UILabel *label = [self.labels objectAtIndex:i];
        label.frame = CGRectMake(0, 44 * i, 320, 44);
    }
    
    self.footer.frame = CGRectMake(0, 44 * [self.labels count], 320, 44);
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
