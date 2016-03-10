//
//  VBLoadingView.h
//  loadingView
//
//  Created by XiaoYun on 16/3/7.
//  Copyright © 2016年 XiaoYun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VBLoadingView : UIView
//+ (VBLoadingView*)sharedInstance ;
+(void) showWithView:(UIView*)view title:(NSString *)title;
+(void) showWithView:(UIView*)view image:(UIImage*)image;
+(void) hidden;
@end
