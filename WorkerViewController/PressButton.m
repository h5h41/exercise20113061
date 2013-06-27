//
//  PressButton.m
//  exercise201130619
//
//  Created by 张 伟 on 13-6-20.
//  Copyright (c) 2013年 赵云. All rights reserved.
//

#import "PressButton.h"
//#import "WorkerInforViewController.h"
#import "WorkerViewController.h"

@interface PressButton ()

@end

@implementation PressButton
@synthesize ChangeView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setFrame:CGRectMake(350, 422, 500, 500)];
    
     self.ChangeView=[[UIView alloc] initWithFrame:CGRectMake(0, 0, 500, 768)];
    [self.view addSubview:self.ChangeView];
    
    NSArray *arrayOne=[NSArray arrayWithObjects:@"确认1",@"确认2", nil];
    for (int i=0; i<2; i++) {
        UIButton *buttonOne=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        [buttonOne setFrame:CGRectMake(0 , 50+100*i, 400, 50)];
        [buttonOne setTitle:[arrayOne objectAtIndex:i] forState:UIControlStateNormal];
        buttonOne.tag=i;
        [buttonOne addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:buttonOne];
    }
}

-(void)buttonPressed:(UIButton *)sender
{    
    int index=sender.tag;
//    ViewController *workView=[[ViewController alloc]initWithNumber:index];
//    [workView addView];
//    WorkerInforViewController *works=[[WorkerInforViewController alloc] init];
//    self.ChangeView=works.view;
//    [self.view addSubview:self.ChangeView];
//    [works release];
}
@end
