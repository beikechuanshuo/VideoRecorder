//
//  ViewController.m
//  VideoRecorder
//
//  Created by liyanjun on 2018/7/2.
//  Copyright © 2018年 liyanjun. All rights reserved.
//

#import "ViewController.h"
#import "HNewRecordingViewController.h"

@interface ViewController ()<HNewRecordingViewControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(50, 50, 100, 40)];
    btn.backgroundColor = [UIColor lightGrayColor];
    [btn setTitle:@"小视频录制" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(videoRecording:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)videoRecording:(id)sender
{
    HNewRecordingViewController *vc = [[HNewRecordingViewController alloc] init];
    vc.recordDelegate = self;
    
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)recordingViewDidEndRecordWithInfo:(NSDictionary *)recordInfo
{
    
}


@end
