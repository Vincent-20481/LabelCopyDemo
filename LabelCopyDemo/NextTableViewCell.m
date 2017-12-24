//
//  NextTableViewCell.m
//  LabelCopyDemo
//
//  Created by EwenMac on 2017/12/24.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "NextTableViewCell.h"

@implementation NextTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.label = [[EwenCopyLabel alloc]init];
        self.label.font = [UIFont systemFontOfSize:14];
        self.label.numberOfLines = 0;
        self.label.frame = CGRectMake(10, 20, kScreenwidth-20, 60);
        self.label.text = @"长按可复制的Label（仿微信）长按可复制的Label（仿微信）长按可复制的Label（仿微信）";
        [self.contentView addSubview:self.label];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

@end
