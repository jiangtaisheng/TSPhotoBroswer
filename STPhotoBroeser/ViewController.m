//
//  ViewController.m
//  STPhotoBroeser
//
//  Created by StriEver on 16/3/15.
//  Copyright © 2016年 StriEver. All rights reserved.
//

#import "ViewController.h"
#import "STImageVIew.h"
#import "STPhotoBroswer.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor greenColor];
    [button setTitle:@"show" forState:UIControlStateNormal];
    button.center = self.view.center;
    button.bounds = CGRectMake(0, 0, 100, 100);
    [button addTarget:self action:@selector(show) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//- (void)show{
//    STPhotoBroswer * broser = [[STPhotoBroswer alloc]initWithImageArray:@[[UIImage imageNamed:@"1.jpg"],[UIImage imageNamed:@"2.jpg"],[UIImage imageNamed:@"3.jpg"],[UIImage imageNamed:@"4.jpg"],[UIImage imageNamed:@"5.jpg"],[UIImage imageNamed:@"6.jpg"],[UIImage imageNamed:@"7.jpg"]] currentIndex:1];
//    [broser show];
//}

- (void)show{
    /**
     * ,@"http://img.xilexuan.com/download/app/20160426/t_2200245309_1342848_l0z0j5_449_600.jpg,@"http://img.xilexuan.com/download/app/20160426/t_2200245309_1342845_l8b7n9_449_600.jpg"
     */
    NSArray * array=@[@"http://img.xilexuan.com/download/app/20160426/t_2200245309_1342850_u1o2w2_449_600.jpg",@"http://img.xilexuan.com/download/app/20160426/t_2200245309_1342844_l3p5w9_337_600.jpg",@"http://img.xilexuan.com/download/app/20160426/t_2200245309_1342847_x6s0s8_449_600.jpg",@"http://img.xilexuan.com/download/app/20160426/t_2200245309_1342846_c6l8g1_449_600.jpg",@"http://img.xilexuan.com/download/app/20160426/t_2200245309_1342849_x3i3y1_337_600.jpg",@"http://img.xilexuan.com/download/app/20160426/t_2200245309_1342845_l8b7n9_449_600.jpg"];
    
    STPhotoBroswer * broser = [[STPhotoBroswer alloc]initWithImageArray:array currentIndex:0];
    [broser show];
}


@end
