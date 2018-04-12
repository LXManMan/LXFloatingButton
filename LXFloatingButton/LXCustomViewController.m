//
//  LXCustomViewController.m
//  LXFloatingButton
//
//  Created by 漫漫 on 2018/4/12.
//  Copyright © 2018年 漫漫. All rights reserved.
//

#import "LXCustomViewController.h"
#import "LXFloaintButton.h"
@interface LXCustomViewController ()
@property (weak, nonatomic) IBOutlet LXFloaintButton *floatintButton;
@property (weak, nonatomic) IBOutlet UIView *container;

@end

@implementation LXCustomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    self.view.backgroundColor =[UIColor whiteColor];
    self.navigationItem.title = @"自定义view";
    
    [self.floatintButton setLXCornerdious:50];
    self.floatintButton.parentView  = self.container;
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
