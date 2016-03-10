//
//  VBLoadingView.m
//  loadingView
//
//  Created by XiaoYun on 16/3/7.
//  Copyright © 2016年 XiaoYun. All rights reserved.
//

#import "VBLoadingView.h"
#import "VBLoadCenterView.h"
#import "Masonry.h"
#define Width  30.0f

@interface VBLoadingView ()

@property(nonatomic,strong)VBLoadCenterView*centerView;

@end
@implementation VBLoadingView

+ (VBLoadingView*)sharedInstance {
    static dispatch_once_t once;
    static VBLoadingView *sharedInstance;
    dispatch_once(&once, ^ {
        sharedInstance = [[VBLoadingView alloc] init];
    });
    return sharedInstance;
}

+(void)showWithView:(UIView *)view title:(NSString *)title{
    [[VBLoadingView sharedInstance] showWithView:view title:title];
}

+(void)showWithView:(UIView *)view image:(UIImage *)image{
    [[VBLoadingView sharedInstance] showWithView:view image:image];
}
+(void)hidden{
    [[VBLoadingView sharedInstance] hidden];
}
-(void)showWithView:(UIView *)view title:(NSString *)title{
    if (self) {
        if (self.centerView) {
            [self.centerView removeFromSuperview];
        }
        self.center=view.center;
        [view addSubview:self];
        self.centerView=[[VBLoadCenterView alloc]initWithTitle:title];
        self.centerView.center=view.center;
        [view addSubview:self.centerView];
   
    }
}
-(void)showWithView:(UIView *)view image:(UIImage *)image{
    if (self) {
        if (self.centerView) {
            [self.centerView removeFromSuperview];
        }
        self.center=view.center;
        [view addSubview:self];
        self.centerView=[[VBLoadCenterView alloc]initWithImage:image];
        self.centerView.center=view.center;
        [view addSubview:self.centerView];

   
    }
}
-(void)hidden{
    if (self) {
        [self.centerView removeFromSuperview];
        [self removeFromSuperview];
    }
}
-(instancetype)init{
    if (self=[super init]) {
        self.frame=CGRectMake(0, 0, CGRectGetWidth([UIScreen mainScreen].bounds),  CGRectGetHeight([UIScreen mainScreen].bounds));
      //  self.backgroundColor=[UIColor cyanColor];
    }
    return self;
}

-(void)dealloc{
    NSLog(@"dealloc");
    self.centerView=nil;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
