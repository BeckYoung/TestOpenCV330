//
//  RootViewController.m
//  PlainNote
//
//  Created by xhp on 2018/9/22.
//  Copyright © 2018年 xhp. All rights reserved.
//
#import "OpenCVUtils.h"
#import "RootViewController.h"
#import "FirstTableViewController.h"

@interface RootViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *pic0;
@property (strong, nonatomic) IBOutlet UIImageView *pic1;
@property (strong, nonatomic) IBOutlet UIImageView *pic2;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor redColor];
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc] initWithTitle:@"设置" style:UIBarButtonItemStylePlain target:self action:@selector(topSettingClick)];
    
    self.navigationItem.title=@"首页";
    
    UILabel *label=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    label.backgroundColor=[UIColor whiteColor];
    label.text=@"首页的文字";
    label.textColor=[UIColor blackColor];
    [self.view addSubview:label];
    // 图片地址要有效不然无法显示图片
    NSString *pic=@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575225522362&di=3af3a493f8079efe605c60e7cf9624ab&imgtype=0&src=http%3A%2F%2Fwww.wndhw.com%2Fmeinv%2Fgaoqing%2Fimages%2Fgq002.jpg";
    UIImage *image=[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:pic]]];
    [self.pic2 setImage:image];
    UIImage *pic0 = self.pic0.image;
    if (pic0) {
        [self.pic1 setImage:[[OpenCVUtils manager] getGreyUIImage:pic0]];
    } else {
        NSLog(@"pic0 is null");
    }
}

-(void)topSettingClick{
    NSLog(@"设置被点击了----->");
    FirstTableViewController *first=[[FirstTableViewController alloc] init];
    [self.navigationController pushViewController:first animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
