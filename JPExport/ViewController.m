//
//  ViewController.m
//  JPExport
//
//  Created by Jinxiansen on 2017/11/30.
//  Copyright © 2017年 Jinxiansen. All rights reserved.
//

#import "ViewController.h"
#import "JPExport.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UISwitch *aSwitch;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)exportData {
    
    NSDictionary * china = @{@"Chinese":@"98",
                             @"population":@"1.5 billion",
                             @"Class_hour":@53};
    
    NSArray * classes = @[china,
                          @{@"English":@"39",
                            @"class_6our":@"48",
                            @"class_size":@40,
                            @"teacher_name":@"jobs"}];
    
    //验证数组字典去重
    NSArray * colors =  @[@{@"color":@"white"},
                          @{@"color":@"red"},
                          @{@"color":@"blue"},
                          @{@"color":@"black"},
                          @{@"color":@"yellow"}];
    
    NSDictionary * data = @{@"age":@19,
                            @"name":@"Jinxiansen",
                            @"blog":@"jinxiansen.com",
                            @"sex":@"男",
                            @"colors":colors,
                            @"course":classes};
    
    NSDictionary * dict = @{@"errorcode":@2,
                            @"data":data};
    
    NSLog(@"原始 dict = %@",dict);
    
    self.textView.text = [JPExport exportFromDictionary:dict];
}


- (IBAction)exportTapped:(UIButton *)sender {
    
    [self exportData];
}

- (IBAction)switchSlider:(UISwitch *)sender {
    sender.on = !sender.on;
    self.label.text = sender.on ? @"移除key中的 _":@"保留key中的 _";
    [self exportData];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end







