//
//  ViewController.m
//  初识CALayer
//
//  Created by liuxingchen on 16/10/25.
//  Copyright © 2016年 liuxingchen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *orange;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [UIView animateWithDuration:1 animations:^{
//        self.orange.layer.transform = CATransform3DMakeRotation(M_PI, 0, 0, 1);
//        self.orange.layer.transform = CATransform3DMakeScale(0.5, 0.5, 1);
        
        //在开发中有些人用kvc快速做一些动画效果，暂时可以用但是后面会有问题
        [self.orange.layer setValue:@0.5 forKeyPath:@"transform.scale"];
    }];
    
    
}

-(void)UIImagViewLayer
{
    /**
     *  UIImageView 比较特殊一般继承view的控件，layer属性都是在操作主层，但是UIImageView不同，它需要操作contents这个属性，才能对主层做一些操作。
     */
    self.imageView.layer.cornerRadius = 50;
    NSLog(@"%@",self.imageView.layer.contents);
    self.imageView.layer.masksToBounds = YES;
    self.imageView.layer.borderColor = [UIColor redColor].CGColor;
    self.imageView.layer.borderWidth = 1;
}
-(void)viewLayer
{
    //设置阴影的不透明度 1为不透明
    self.orange.layer.shadowOpacity = 1;
    self.orange.layer.shadowOffset = CGSizeMake(5, 5);
    self.orange.layer.shadowColor = [UIColor greenColor].CGColor;
    //阴影角度
    self.orange.layer.shadowRadius = 5;
    //圆角半径
    self.orange.layer.cornerRadius = 10;
    //边框属性
    self.orange.layer.borderWidth = 4;
    self.orange.layer.borderColor = [UIColor blueColor].CGColor;
}
@end
