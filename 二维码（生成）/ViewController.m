//
//  ViewController.m
//  二维码（生成）
//
//  Created by kingstartimes on 15/12/14.
//  Copyright © 2015年 junde. All rights reserved.
//

#import "ViewController.h"
#import "ZBarSDK.h"
#import "QRCodeGenerator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBar.backgroundColor = [UIColor blackColor];
    [self createUI];
}

-(void)createUI{
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(20, 120, self.view.frame.size.width-40 , self.view.frame.size.height-250)];
    imageView.image = [QRCodeGenerator qrImageForString:@"www.baidu.com" imageSize:imageView.bounds.size.width];
    [self.view addSubview:imageView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
