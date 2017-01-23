//
//  JGPopView.h
//  EFFLOG
//
//  Created by stkcctv on 17/1/23.
//  Copyright © 2017年 JG. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, JGDirectionType)
{
    JGTypeOfUpLeft,     // 上左
    JGTypeOfUpCenter,   // 上中
    JGTypeOfUpRight,    // 上右
    
    JGTypeOfDownLeft,   // 下左
    JGTypeOfDownCenter, // 下中
    JGTypeOfDownRight,  // 下右
    
    JGTypeOfLeftUp,     // 左上
    JGTypeOfLeftCenter, // 左中
    JGTypeOfLeftDown,   // 左下
    
    JGTypeOfRightUp,    // 右上
    JGTypeOfRightCenter,// 右中
    JGTypeOfRightDown,  // 右下
    
};

@protocol selectIndexPathDelegate <NSObject>

- (void)selectIndexPathRow:(NSInteger )index;

@end


@interface JGPopView : UIView

// backGoundView
@property (nonatomic, strong) UIView  * _Nonnull backGoundView;
// titles
@property (nonatomic, strong) NSArray * _Nonnull dataArray;
// images
@property (nonatomic, strong) NSArray * _Nonnull images;
// height
@property (nonatomic, assign) CGFloat row_height;
// font
@property (nonatomic, assign) CGFloat fontSize;
// teJGColor
@property (nonatomic, strong) UIColor * _Nonnull titleTextColor;
// delegate
@property (nonatomic, assign) id <selectIndexPathDelegate> _Nonnull delegate;
// 初始化方法
- (instancetype _Nonnull)initWithOrigin:(CGPoint) origin
                                  Width:(CGFloat) width
                                 Height:(CGFloat) height
                                   Type:(JGDirectionType)type
                                  Color:( UIColor * _Nonnull ) color;

- (void)popView;

- (void)dismiss;





@end
