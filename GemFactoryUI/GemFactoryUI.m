//
//  GemFactoryUI.m
//  GemFactoryUI
//
//  Created by GemShi on 2017/2/5.
//  Copyright © 2017年 GemShi. All rights reserved.
//

#import "GemFactoryUI.h"

@implementation GemFactoryUI

+(UIButton *)createButtonWithFrame:(CGRect)frame Title:(NSString *)title TitleColor:(UIColor *)titlecolor ImageName:(NSString *)imageName BackgroundImageName:(NSString *)bgimgName BackgroundColor:(UIColor *)bgColor Target:(id)target Selector:(SEL)selector
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = frame;
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:titlecolor forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@",imageName]] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@",bgimgName]] forState:UIControlStateNormal];
    button.backgroundColor = bgColor;
    [button addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    return button;
}

+(UILabel *)createLabelWithFrame:(CGRect)frame Text:(NSString *)text TextColor:(UIColor *)textColor Font:(UIFont *)font BackgroundColor:(UIColor *)bgColor
{
    UILabel *label = [[UILabel alloc]initWithFrame:frame];
    label.text = text;
    label.textColor = textColor;
    label.font = font;
    label.userInteractionEnabled = NO;
    label.textAlignment = NSTextAlignmentLeft;
    label.backgroundColor = bgColor;
    return label;
}

+(UIImageView *)createImageViewWithFrame:(CGRect)frame ImageName:(NSString *)imgName
{
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:frame];
    imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",imgName]];
    return imageView;
}

+(UIView *)createViewWithFrame:(CGRect)frame BackgroundColor:(UIColor *)bgColor
{
    UIView *view = [[UIView alloc]initWithFrame:frame];
    view.backgroundColor = bgColor;
    return view;
}

+(UITextField *)createTextFieldWithFrame:(CGRect)frame Text:(NSString *)text TextColor:(UIColor *)textColor Font:(UIFont *)font BorderStyle:(UITextBorderStyle)borderStyle Alignment:(NSTextAlignment)alignment
{
    UITextField *textField = [[UITextField alloc]initWithFrame:frame];
    textField.text = [NSString stringWithFormat:@"%@",text];
    textField.textColor = textColor;
    textField.font = font;
    textField.borderStyle = borderStyle;
    textField.textAlignment = alignment;
    return textField;
}

@end
