//
//  LXWindowController.m
//  LXFloatingButton
//
//  Created by 漫漫 on 2018/4/12.
//  Copyright © 2018年 漫漫. All rights reserved.
//

#import "LXWindowController.h"
#import "LXFloaintButton.h"
@interface LXWindowController ()
@property(nonatomic,strong)LXFloaintButton *button;
@end

@implementation LXWindowController
-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.button removeFromSuperview];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor =[UIColor whiteColor];

    LXFloaintButton *button = [LXFloaintButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 100, 100, 100);
    [button setTitle:@"拖动" forState:UIControlStateNormal];
    button.backgroundColor =[UIColor blueColor];
    [button setLXCornerdious:50];
    
    button.safeInsets = UIEdgeInsetsMake(0, 0, ELSareArea, 0);
    [LX_KeyWindow addSubview:button];
    
    
    button.parentView = LX_KeyWindow;
    
    self.button  = button;
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
