//
//  ViewController.m
//  JGPopView
//
//  Created by stkcctv on 17/1/23.
//  Copyright © 2017年 JG. All rights reserved.
//

#import "ViewController.h"
#import "JGPopView.h"


@interface ViewController () <selectIndexPathDelegate>
@property (weak, nonatomic) IBOutlet UIButton *btn;
//保存所有日志类型
@property (nonatomic, strong) NSArray *logTypeArrM;
@end

@implementation ViewController

- (NSArray *)logTypeArrM {
    
    if (!_logTypeArrM) {
        _logTypeArrM = @[@"日计划",@"周计划",@"月计划",@"季计划",@"年计划"];
    }
    return _logTypeArrM;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [_btn setShowsTouchWhenHighlighted:YES];
    
}

- (IBAction)btn:(UIButton *)btn {
    
    
    CGPoint point = CGPointMake(btn.center.x,btn.frame.origin.y + 45);
    JGPopView *view2 = [[JGPopView alloc] initWithOrigin:point Width:btn.frame.size.width * 0.5 Height:40 * 4 Type:JGTypeOfUpCenter Color:[UIColor whiteColor]];
//    view2.dataArray = @[@"发起群聊",@"添加朋友", @"扫一扫", @"收付款"];
//    view2.images = @[@"发起群聊",@"添加朋友", @"扫一扫", @"付款"];
    view2.dataArray = self.logTypeArrM;
    view2.fontSize = 13;
    view2.row_height = 40;
    view2.titleTextColor = [UIColor blackColor];
    view2.delegate = self;
    [view2 popView];
    
}


- (void)selectIndexPathRow:(NSInteger)index{
    
    //    JGLog(@"=====%@",[self.allNameArrM objectAtIndex:index]);
    
    [self.btn setTitle:[self.logTypeArrM objectAtIndex:index] forState:UIControlStateNormal];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
