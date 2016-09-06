//
//  ViewController.m
//  二维码
//
//  Created by 123 on 16/9/4.
//  Copyright © 2016年 彭洪. All rights reserved.
//

#import "ViewController.h"
#import "QRCodeGenerator.h"//引入库
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self initQRCode];
}

- (void)initQRCode {
    CGFloat w = [UIScreen mainScreen].bounds.size.width;
    NSArray *arr = @[[QRCodeGenerator qrImageForString:@"Key" imageSize:400],
                     [QRCodeGenerator qrImageForString:@"Key1" imageSize:400 Topimg:[UIImage imageNamed:@"super.jpg"]],
                     [QRCodeGenerator qrImageForString:@"Key3" imageSize:400 withPointType:QRPointRound withPositionType:QRPositionRound withColor:[UIColor redColor]]
                     ];
    for (int i=0; i<3; i++) {
        UIImageView *qr = [[UIImageView alloc] initWithFrame:CGRectMake((i%3)*w/3, 100+(i/3)*w/3, w/3, w/3)];
        qr.image = arr[i];
        [self.view addSubview:qr];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
























































