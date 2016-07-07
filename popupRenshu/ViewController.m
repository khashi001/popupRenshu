//
//  ViewController.m
//  popupRenshu
//
//  Created by 橋本 久美子 on 2016/07/04.
//  Copyright © 2016年 Orange Forest. All rights reserved.
//

#import "ViewController.h"
#import "QBPopupMenu.h"

@interface ViewController ()

@property (nonatomic, strong) QBPopupMenu *popupMenu;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.popupMenu = [[QBPopupMenu alloc]init];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showPopupMenu:(id)sender {
    
    UIButton *button = (UIButton *)sender;
    [self.popupMenu showInView:self.view targetRect:button.frame animated:YES];
}
@end
