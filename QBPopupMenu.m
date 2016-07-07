//
//  QBPopupMenu.m
//  popupRenshu
//
//  Created by 橋本 久美子 on 2016/07/04.
//  Copyright © 2016年 Orange Forest. All rights reserved.
//

#import "QBPopupMenu.h"

static const NSTimeInterval kQBPopupMenuAnimationDuration = 0.2;


@interface QBPopupMenu ()

@property (nonatomic, assign, getter = isVisible, readwrite) BOOL visible;

@property (nonatomic, weak) UIView *view;

@property (nonatomic, assign) CGRect targetRect;


@end



@implementation QBPopupMenu

- (void)showInView:(UIView *)view targetRect:(CGRect)targetRect animated:(BOOL)animated
{
    
    if ([self isVisible]) {
        return;
    }

    self.view = view;
    self.targetRect = targetRect;

    UIView *muteInfoView = [[UIView alloc] initWithFrame:CGRectMake(50, 50, 500, 500)];
    
    muteInfoView.backgroundColor = [UIColor whiteColor ];
    
    [self addSubview:muteInfoView];
    [self.view bringSubviewToFront:muteInfoView];  //最前面にする
    
    
    
}

- (void)dismissAnimated:(BOOL)animated{

}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
