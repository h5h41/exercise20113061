//
//  VCViewController.m
//  exercise201130619
//
//  Created by 张翼德 on 13-6-20.
//  Copyright (c) 2013年 赵云. All rights reserved.
//

#import "VCViewController.h"
#import "TableViewController.h"
#import "WorkerInforViewController.h"
#import "tableView.h"

@interface VCViewController ()

@end

@implementation VCViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor blackColor];
    [self.view setFrame:CGRectMake(self.view.frame.size.width*0.2, 0, self.view.frame.size.width*1.2, self.view.frame.size.height)];
    TableViewController *tab=[[TableViewController alloc]init];
    [self.view addSubview:tab.view];
//    tableView *tab=[[tableView alloc]init];
//    [self.view addSubview:tab.view];
    WorkerInforViewController *work=[[WorkerInforViewController alloc]init];
   [self.view addSubview:work.view];

	
}


@end
