//
//  HNewRecordingViewController.h
//  reliao
//
//  Created by liyanjun on 2017/6/7.
//  Copyright © 2017年 iH. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HNewRecordingViewControllerDelegate <NSObject>

@optional
/** 录制完成代理 */
- (void)recordingViewDidEndRecordWithInfo:(NSDictionary *)recordInfo;

@end

@interface HNewRecordingViewController : UIViewController

@property (weak, nonatomic) id<HNewRecordingViewControllerDelegate> recordDelegate;

@end
