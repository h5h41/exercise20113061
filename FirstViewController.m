//
//  FirstViewController.m
//  exercise201130619
//
//  Created by iFeng on 13-6-19.
//  Copyright (c) 2013年 赵云. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    
    [self.view setFrame:CGRectMake(self.view.frame.size.width*0.2, 0, self.view.frame.size.width*1.2, self.view.frame.size.height)];
    UILabel *labels=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 5, self.view.frame.size.height)];
    [labels setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:labels];
    [labels release];

}

@end
