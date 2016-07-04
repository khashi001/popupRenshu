//
//  QBPopupMenu.h
//  popupRenshu
//
//  Created by 橋本 久美子 on 2016/07/04.
//  Copyright © 2016年 Orange Forest. All rights reserved.
//

#import <UIKit/UIKit.h>

@class QBPopupMenu;

@protocol QBPopupMenuDelegate <NSObject>

@optional
-(void)popupMenuWillAppear:(QBPopupMenu *)popupMenu;
-(void)popupMenuDidAppear:(QBPopupMenu *)popupMenu;
-(void)popupMenuWillDisappear:(QBPopupMenu *)popupMenu;
-(void)popupMenuDidDisappear:(QBPopupMenu *)popupMenu;

@end


@interface QBPopupMenu : UIView

@property (nonatomic, assign, getter = isVisible, readonly) BOOL visible;

@property (nonatomic, strong) UIColor *color;

@property (nonatomic, strong) UIColor *highlightedColor;

- (void)showInView:(UIView *)view targetRect:(CGRect)targetRect animated:(BOOL)animated;

- (void)dismissAnimated:(BOOL)animated;





@end