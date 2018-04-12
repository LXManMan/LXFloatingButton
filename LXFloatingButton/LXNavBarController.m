//
//  LXNavBarController.m
//  LXFloatingButton
//
//  Created by 漫漫 on 2018/4/12.
//  Copyright © 2018年 漫漫. All rights reserved.
//

#import "LXNavBarController.h"
#import "LXFloaintButton.h"
@interface LXNavBarController ()

@end

@implementation LXNavBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor =[UIColor whiteColor];
    self.navigationItem.title = @"有Navbar";
    
    LXFloaintButton *button = [LXFloaintButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 100, 100, 100);
    [button setTitle:@"拖动" forState:UIControlStateNormal];
    button.backgroundColor =[UIColor blueColor];
    [button setLXCornerdious:50];
    
    
    
    button.safeInsets = UIEdgeInsetsMake(NAVH, 0, ELSareArea , 0);
    [self.view addSubview:button];
    
    
    button.parentView = self.view;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
