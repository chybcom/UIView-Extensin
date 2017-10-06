//
//  UIView+Extensin.h
//  01-appIcon与启动图
//
//  Created by apple on 16/10/21.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Extensin)

/** UI控制 x 值 */
@property (nonatomic, assign) CGFloat x;

/** UI控制 y 值 */
@property (nonatomic, assign) CGFloat y;

/** UI控制 宽度 */
@property (nonatomic, assign) CGFloat width;

/** UI控制 高度 */
@property (nonatomic, assign) CGFloat height;

/** UI控制 大小 size 值 */
@property (nonatomic, assign) CGSize size;

/** UI控制 中心点 x 值 */
@property (nonatomic, assign) CGFloat centerX;

/** UI控制 中心点 y 值 */
@property (nonatomic, assign) CGFloat centerY;





/** 判断一个控件是否在 当前的 KeyWindow 上 ,当前控制器的view是否在 window上 显示在眼前*/
- (BOOL)isShowKeyWindow;


/** 加载和类名 (self 自身)一样的 xib */
+ (instancetype)viewFromXib;

@end
