//
//  ViewController.m
//  exercise201130619
//
//  Created by iFeng on 13-6-19.
//  Copyright (c) 2013年 赵云. All rights reserved.
//

#import "ViewController.h"
#import "BaseViewController.h"
#import "FirstViewController.h"
#import "WorkerViewController/WorkerViewController.h"
#import "VCViewController/VCViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize scrViewOne,buttonOne,baseView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor blackColor];
    self.baseView=[[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width*0.2, 0, self.view.frame.size.width*0.9, self.view.frame.size.height)];
    [baseView setBackgroundColor:[UIColor blackColor]];
    
    BaseViewController *firstview=[[BaseViewController alloc] init];
    self.baseView=firstview.view;
    [self.view addSubview:self.baseView];
    
    scrViewOne=[[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width*0.2, self.view.frame.size.height)];
    scrViewOne.delegate=self;
    scrViewOne.indicatorStyle=UIScrollViewIndicatorStyleWhite;
    scrViewOne.showsVerticalScrollIndicator=NO;
    scrViewOne.contentSize=CGSizeMake(self.view.frame.size.width*0.2, self.view.frame.size.height*1.02);
    [self.view addSubview:scrViewOne];
    
    
    NSMutableArray *arra=[NSMutableArray arrayWithObjects:@"001.jpg",@"002.jpg",@"003.jpg",@"004.jpg",@"005.jpg", nil];
    for (int i=0; i<5; i++) {
        buttonOne=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        [buttonOne setFrame:CGRectMake(35, 70+120*i, 73, 73)];
        [buttonOne setBackgroundImage:[UIImage imageNamed:[arra objectAtIndex:i]] forState:UIControlStateNormal];
        buttonOne.tag=i;
        [buttonOne addTarget:self action:@selector(buttonOneEvent:) forControlEvents:UIControlEventTouchUpInside];
        [scrViewOne addSubview:buttonOne];
    }
}

-(void)buttonOneEvent:(id)sender
{
    switch ([sender tag]) {
        case 0:
            NSLog(@"%d",[sender tag]);
            BaseViewController *firstview=[[BaseViewController alloc] init];
            self.baseView=firstview.view;
            [self.view addSubview:self.baseView];
            break;
        case 1:
            NSLog(@"%d",[sender tag]);
            WorkerViewController *worker=[[WorkerViewController alloc]init];
            self.baseView=worker.view;
            [self.view addSubview:self.baseView];
            [worker release];
            break;
        case 2:
            NSLog(@"%d",[sender tag]);
            VCViewController *vcview=[[VCViewController alloc]init];
            self.baseView=vcview.view;
            [self.view addSubview:self.baseView];
            [vcview release];
            break;
        case 4:
            [self dismissViewControllerAnimated:YES completion:nil];
            break;
        default:
            break;
    }
}

-(void)dealloc
{
    [scrViewOne release];
    scrViewOne=nil;
    [baseView release];
    baseView=nil;
    [super dealloc];
}
@end
