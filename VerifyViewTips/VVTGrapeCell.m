//
//  VVTGrapeCell.m
//  VerifyViewTips
//
//  Created by KAZUMA Ukyo on 12/07/09.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "VVTGrapeCell.h"

#define kGrapeCellHeight 44

@implementation VVTGrapeCell

@synthesize titleLabel = _titleLabel;
@synthesize descriptionLabel = _descriptionLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor whiteColor];
        self.titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        self.titleLabel.textAlignment = UITextAlignmentCenter;
        [self addSubview:self.titleLabel];
        self.descriptionLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        self.descriptionLabel.textAlignment = UITextAlignmentCenter;
        [self addSubview:self.descriptionLabel];
    }
    return self;
}

- (void)layoutSubviews {
    self.titleLabel.frame = CGRectMake(0, 0, 120, 44);
    self.descriptionLabel.frame = CGRectMake(120, 0, 200, 44);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
