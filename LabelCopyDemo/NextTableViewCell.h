//
//  NextTableViewCell.h
//  LabelCopyDemo
//
//  Created by EwenMac on 2017/12/24.
//  Copyright © 2017年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EwenCopyLabel.h"
/**
 屏幕大小宏定义
 */
#define kScreenBounds ([[UIScreen mainScreen] bounds])
#define kScreenwidth (kScreenBounds.size.width)
#define kScreenheight (kScreenBounds.size.height)

@interface NextTableViewCell : UITableViewCell

@property (nonatomic,strong)EwenCopyLabel *label;

@end
