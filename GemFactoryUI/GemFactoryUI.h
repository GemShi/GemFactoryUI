//
//  GemFactoryUI.h
//  GemFactoryUI
//
//  Created by GemShi on 2017/2/5.
//  Copyright © 2017年 GemShi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface GemFactoryUI : NSObject

/**创建Button*/
+(UIButton *)createButtonWithFrame:(CGRect)frame Title:(NSString *)title TitleColor:(UIColor *)titlecolor ImageName:(NSString *)imageName BackgroundImageName:(NSString *)bgimgName BackgroundColor:(UIColor *)bgColor Target:(id)target Selector:(SEL)selector;

/**创建Lable*/
+(UILabel *)createLabelWithFrame:(CGRect)frame Text:(NSString *)text TextColor:(UIColor *)textColor Font:(UIFont *)font BackgroundColor:(UIColor *)bgColor;

/**创建ImageView*/
+(UIImageView *)createImageViewWithFrame:(CGRect)frame ImageName:(NSString *)imgName;

/**创建View*/
+(UIView *)createViewWithFrame:(CGRect)frame BackgroundColor:(UIColor *)bgColor;

/**创建textField*/
+(UITextField *)createTextFieldWithFrame:(CGRect)frame Text:(NSString *)text TextColor:(UIColor *)textColor Font:(UIFont *)font BorderStyle:(UITextBorderStyle)borderStyle Alignment:(NSTextAlignment)alignment;

@end
