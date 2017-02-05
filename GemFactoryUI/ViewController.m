//
//  ViewController.m
//  GemFactoryUI
//
//  Created by GemShi on 2017/2/5.
//  Copyright © 2017年 GemShi. All rights reserved.
//

#import "ViewController.h"
#import "GemFactoryUI.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createLayout];
}

-(void)createLayout
{
    UIButton *button = [GemFactoryUI createButtonWithFrame:CGRectMake(10, 70, 100, 30) Title:@"button" TitleColor:[UIColor orangeColor] ImageName:@"" BackgroundImageName:@"" BackgroundColor:[UIColor yellowColor] Target:self Selector:@selector(click)];
    [self.view addSubview:button];
    
    UILabel *label = [GemFactoryUI createLabelWithFrame:CGRectMake(10, 110, 100, 30) Text:@"label" TextColor:[UIColor redColor] Font:[UIFont boldSystemFontOfSize:16] BackgroundColor:[UIColor yellowColor]];
    [self.view addSubview:label];
    
    UIImageView *imageView = [GemFactoryUI createImageViewWithFrame:CGRectMake(10, 150, 50, 50) ImageName:@"xcode"];
    [self.view addSubview:imageView];
    
    UIView *view = [GemFactoryUI createViewWithFrame:CGRectMake(10, 210, 50, 50) BackgroundColor:[UIColor greenColor]];
    [self.view addSubview:view];
    
    UITextField *textField = [GemFactoryUI createTextFieldWithFrame:CGRectMake(10, 270, 100, 30) Text:@"textField" TextColor:[UIColor blueColor] Font:[UIFont systemFontOfSize:13] BorderStyle:UITextBorderStyleRoundedRect Alignment:NSTextAlignmentCenter];
    [self.view addSubview:textField];
    
}

-(void)click
{
    NSLog(@"I am button!");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
