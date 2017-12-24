//
//  NextViewController.m
//  LabelCopyDemo
//
//  Created by EwenMac on 2017/12/24.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "NextViewController.h"
#import "NextTableViewCell.h"
@interface NextViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[NextTableViewCell class] forCellReuseIdentifier:@"NextTableViewCell"];
}


#pragma mark --- UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 20;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NextTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"NextTableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

#pragma mark --- UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0.01;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 10;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    return [[UIView alloc] init];
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    return [[UIView alloc] init];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
}







- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
