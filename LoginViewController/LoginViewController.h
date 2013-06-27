//
//  LoginViewController.h
//  IOS_20130619
//
//  Created by 张翼德 on 13-6-19.
//  Copyright (c) 2013年 张飞. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController<UIScrollViewDelegate>
{
    UITextView *textview;
    UITextView *textview2;
}
@property(nonatomic,retain) UITextView *textview;
@property(nonatomic,retain) UITextView *textview2;

@end
