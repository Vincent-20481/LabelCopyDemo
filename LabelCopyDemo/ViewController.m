//
//  ViewController.m
//  LabelCopyDemo
//
//  Created by apple on 2016/10/21.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"
#import "EwenCopyLabel.h"
#import "NextViewController.h"
/**
 屏幕大小宏定义
 */
#define kScreenBounds ([[UIScreen mainScreen] bounds])
#define kScreenwidth (kScreenBounds.size.width)
#define kScreenheight (kScreenBounds.size.height)
@interface ViewController ()
@property (nonatomic,strong)EwenCopyLabel *label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.label = [[EwenCopyLabel alloc]init];
    self.label.font = [UIFont systemFontOfSize:14];
    self.label.numberOfLines = 0;
    self.label.frame = CGRectMake(10, 200, kScreenwidth-20, 60);
    self.label.text = @"长按可复制的Label（仿微信）长按可复制的Label（仿微信）长按可复制的Label（仿微信）";
    [self.view addSubview:self.label];
    
}

- (IBAction)next:(id)sender {
    NextViewController *next = [NextViewController new];
    [self.navigationController pushViewController:next animated:YES];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
