//
//  LXNoNavbarController.m
//  LXFloatingButton
//
//  Created by 漫漫 on 2018/4/12.
//  Copyright © 2018年 漫漫. All rights reserved.
//

#import "LXNoNavbarController.h"
#import "LXFloaintButton.h"
@interface LXNoNavbarController ()
@property (weak, nonatomic) IBOutlet LXFloaintButton *floatBtn;

@end

@implementation LXNoNavbarController
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}
-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor =[UIColor whiteColor];

    // Do any additional setup after loading the view from its nib.
    
    [self.floatBtn setLXCornerdious:50];
    
    self.floatBtn.parentView = self.view;
    self.floatBtn.safeInsets = UIEdgeInsetsMake(0,0, ELSareArea, 0);
    
    WS(weakSelf);
    [self.floatBtn addClickBlock:^(UIButton *button) {
        [weakSelf.navigationController popViewControllerAnimated:YES];
    }];
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
