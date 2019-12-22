//
//  OpenCVUtils.h
//  PlainNote
//
//  Created by xhp on 2019/12/15.
//  Copyright © 2019 xhp. All rights reserved.
//
#ifdef __cplusplus
#import <opencv2/opencv.hpp>
#endif
#import <UIKit/UIKit.h>

using namespace cv;
using namespace std;

NS_ASSUME_NONNULL_BEGIN

@interface OpenCVUtils : NSObject

+ (instancetype)manager;

- (Mat)cvMatFromUIImage:(UIImage *)image;

- (Mat)cvMatGrayFromUIImage:(UIImage *)image;

-(UIImage *)UIImageFromCVMat:(Mat)cvMat;

- (UIImage *)getGreyUIImage:(UIImage *)image;

@end

NS_ASSUME_NONNULL_END
