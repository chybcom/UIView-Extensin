//
//  UIView+Extensin.m
//  01-appIcon与启动图
//
//  Created by apple on 16/10/21.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "UIView+Extensin.h"


@implementation UIView (Extensin)


- (void)setX:(CGFloat)x{

    CGRect frame = self.frame;
    
    frame.origin.x = x;
    
    self.frame = frame;
}

- (CGFloat)x{
    
    return self.frame.origin.x;
}

- (void)setY:(CGFloat)y{

    CGRect frame = self.frame;
    
    frame.origin.y = y;
    
    self.frame = frame;
}

- (CGFloat)y{
    
    return self.frame.origin.y;
}

- (void)setSize:(CGSize)size{
    
    CGRect frame = self.frame;
    
    frame.size = size;
    
    self.frame = frame;
}

- (CGSize)size{

    return self.frame.size;
}


- (void)setWidth:(CGFloat)width{
    
    CGRect frame = self.frame;
    
    frame.size.width = width;
    
    self.frame = frame;
}

- (CGFloat)width{
    
    return self.frame.size.width;
}

- (void)setHeight:(CGFloat)height{
    
    CGRect frame = self.frame;
    
    frame.size.height = height;
    
    self.frame = frame;
}

- (CGFloat)height{
    
    return self.frame.size.height;
}

- (void)setCenterX:(CGFloat)centerX{
    
    CGPoint center = self.center;
    
    center.x = centerX;
    
    self.center = center;
}

- (CGFloat)centerX{
    
    return self.center.x;
}

- (void)setCenterY:(CGFloat)centerY{
    
    CGPoint center = self.center;
    
    center.y = centerY;
    
    self.center = center;
}

- (CGFloat)centerY{
    
    return self.center.y;
}




/** 判断一个控件是否在 当前的 KeyWindow 上 ,当前控制器的view是否在 window上 显示在眼前*/
- (BOOL)isShowKeyWindow{
    
    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
    CGRect keyWindowRect = keyWindow.bounds;
    
    // 把 self 的坐标系转为相对于 keyWindow 的坐标系
    CGRect newRect = [self.superview convertRect:self.frame toView:keyWindow];
    
    //判断 第一个参数 rect 是否在 第二个参数 keyWindowRect上
    BOOL intersects = CGRectIntersectsRect(newRect, keyWindowRect);
    
    // 一个控件是否真的显示在 window 要同时满足以下四个条件
    return !self.isHidden && self.alpha > 0.01 && self.window == keyWindow && intersects;
}

/** 加载和类名 (self 自身)一样的 xib */
+ (instancetype)viewFromXib{
    
    return [[NSBundle mainBundle]loadNibNamed:NSStringFromClass(self) owner:nil options:nil].lastObject;
}


@end
