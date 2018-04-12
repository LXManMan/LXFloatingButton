//
//  ViewController.m
//  LXFloatingButton
//
//  Created by 漫漫 on 2018/4/12.
//  Copyright © 2018年 漫漫. All rights reserved.
//

#import "ViewController.h"
#import "LXNavBarController.h"
#import "LXNoNavbarController.h"
#import "LXWindowController.h"
#import "LXCustomViewController.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *tableView;
@property(nonatomic,strong)NSArray *dataA;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"浮动按钮";
   
    
    self.dataA = @[@"有Navbar",@"无Navbar",@"Window上",@"自定义View"];
    [self.view addSubview:self.tableView];
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataA.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = self.dataA[indexPath.row];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (indexPath.row == 0) {
        LXNavBarController *nextVc =[[LXNavBarController alloc]init];
        [self.navigationController pushViewController:nextVc animated:YES];
    }
    if (indexPath.row == 1) {
        LXNoNavbarController *nextVc =[[LXNoNavbarController alloc]init];
        [self.navigationController pushViewController:nextVc animated:YES];
    }
    
    if (indexPath.row == 2) {
        LXWindowController *nextVc =[[LXWindowController alloc]init];
        [self.navigationController pushViewController:nextVc animated:YES];
    }
    
    if (indexPath.row == 3) {
        LXCustomViewController *nextVc =[[LXCustomViewController alloc]init];
        [self.navigationController pushViewController:nextVc animated:YES];
    }
}
-(UITableView *)tableView{
    if (!_tableView) {
        _tableView =[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.tableFooterView = [UIView new];
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    }
    return _tableView;
}
@end
