//
//  ViewController.m
//  KVO_demo
//
//  Created by 宋锡铭 on 2018/5/29.
//  Copyright © 2018年 宋锡铭. All rights reserved.
//

#import "ViewController.h"
#import "Fizz.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Fizz *fizz = [[Fizz alloc] init];
    [fizz addObserver:self forKeyPath:@"number" options:NSKeyValueObservingOptionNew |NSKeyValueObservingOptionOld  context:nil];
    fizz.number = @1;
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    NSLog(@"变化了:%@",change);
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"点击了屏幕");
}

@end
