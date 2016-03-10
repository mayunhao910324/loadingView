//
//  VBLoadCenterView.h
//  loadingView
//
//  Created by XiaoYun on 16/3/7.
//  Copyright © 2016年 XiaoYun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VBLoadCenterView : UIView
/**
 *  中间是文字
 *
 *  @param title 中间文字
 *
 *  @return <#return value description#>
 */
-(instancetype)initWithTitle:(NSString *)title;
/**
 *  中间是icon
 *
 *  @param image 中间的icon
 *
 *  @return <#return value description#>
 */
-(instancetype)initWithImage:(UIImage*)image;
@end
