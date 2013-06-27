//
//  WorkerViewController.m
//  exercise201130619
//
//  Created by 张 伟 on 13-6-19.
//  Copyright (c) 2013年 赵云. All rights reserved.
//

#import "WorkerViewController.h"
#import "tableView.h"
#import "NewPage.h"
#import "PressButton.h"
#define pc0 @"celebrate.jpg"

@interface WorkerViewController ()

@end

@implementation WorkerViewController
@synthesize viewTables;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setFrame:CGRectMake(self.view.frame.size.width*0.2, 0, self.view.frame.size.width*1.2, self.view.frame.size.height)];
    [self.view setBackgroundColor:[UIColor blackColor]];
    
    tableView *table=[[tableView alloc]init];
    [self.view addSubview:table.view];
    
    PressButton *pButton=[[PressButton alloc]init];
    [self.view addSubview:pButton.view];

}
@end
