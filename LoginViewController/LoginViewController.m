//
//  LoginViewController.m
//  IOS_20130619
//
//  Created by 张翼德 on 13-6-19.
//  Copyright (c) 2013年 张飞. All rights reserved.
//

#import "LoginViewController.h"
#import "ViewController.h"
@interface LoginViewController ()

@end

@implementation LoginViewController
@synthesize textview,textview2;
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImageView *imgview=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 1024, self.view.frame.size.height)];
    UIImage *img=[UIImage imageNamed:@"beijing2.jpg"];
    imgview.image=img;
    [self.view addSubview:imgview];
    [img release];
    
    UILabel *lable=[[UILabel alloc]initWithFrame:CGRectMake(342, 80, 400, 80)];
    lable.font=[UIFont systemFontOfSize:40.0];
    lable.textColor=[UIColor whiteColor];
    lable.backgroundColor=[UIColor clearColor];
    lable.text=@"职员信息管理系统";
    [self.view addSubview:lable];
    [lable release]; 
    
    UILabel *lable1=[[UILabel alloc]initWithFrame:CGRectMake(262, 160, 500, 5)];
    lable1.backgroundColor=[UIColor grayColor];
    [self.view addSubview:lable1];
    [lable1 release];
    
    UILabel *lable2=[[UILabel alloc]initWithFrame:CGRectMake(280, 240, 100, 40)];
    lable2.font=[UIFont systemFontOfSize:25.0];
    lable2.textColor=[UIColor whiteColor];
    lable2.backgroundColor=[UIColor clearColor];
    lable2.text=@"账户名";
    [self.view addSubview:lable2];
    [lable2 release];

    UILabel *lable3=[[UILabel alloc]initWithFrame:CGRectMake(280, 360, 100,40)];
    lable3.font=[UIFont systemFontOfSize:25.0];
    lable3.textColor=[UIColor whiteColor];
    lable3.backgroundColor=[UIColor clearColor];
    lable3.text=@"密   码";
    [self.view addSubview:lable3];
    [lable3 release];
    
    textview=[[UITextView alloc]initWithFrame:CGRectMake(380, 240, 350, 40)];
    textview.font=[UIFont systemFontOfSize:25.0];
    textview.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:textview];
    [textview release];
    
    textview2=[[UITextView alloc]initWithFrame:CGRectMake(380, 360, 350, 40)];
    textview2.font=[UIFont systemFontOfSize:25.0];
    textview2.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:textview2];
    [textview2 release];
    
    
    
    UIButton *bt=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    bt.frame=CGRectMake(412, 494, 200, 50);
    [bt setTitle:@"登陆" forState:UIControlStateNormal];
    [bt setFont:[UIFont systemFontOfSize:30.0]];
    [bt setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    bt.backgroundColor=[UIColor clearColor];
    [bt setBackgroundImage:[UIImage imageNamed:@"beijing1.jpg"] forState:UIControlStateNormal];
    [bt addTarget:self action:@selector(buttonMathod:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bt];
    [bt release];
    
}
-(void)buttonMathod:(UIButton*)sender
{

    if ([textview.text isEqualToString:@""]) {

        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"提示：" message:@"账户名不能为空" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil];
        [alert show];
    
    } else if ([textview2.text isEqualToString:@""]){
        UIAlertView *alert1=[[UIAlertView alloc]initWithTitle:@"提示：" message:@"密码不能为空" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil];
        [alert1 show];
    }
    else {
        ViewController *Viewcontrl=[[ViewController alloc] init];
        [self presentViewController:Viewcontrl animated:YES completion:nil];
        [Viewcontrl release];
    }
}

@end
