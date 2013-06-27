//
//  BaseViewController.m
//  exercise201130619
//
//  Created by iFeng on 13-6-19.
//  Copyright (c) 2013年 赵云. All rights reserved.
//

#import "BaseViewController.h"
#import "ImageViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController
@synthesize imgViewOne,buttonOne,poper,sender;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor blackColor];
    [self.view setFrame:CGRectMake(self.view.frame.size.width*0.2, 0, self.view.frame.size.width*1.2, self.view.frame.size.height)];
    UILabel *labels=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 5, self.view.frame.size.height)];
    [labels setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:labels];
    [labels release];
    
    buttonOne=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [buttonOne setFrame:CGRectMake(700, 30, 73, 43)];
    [buttonOne setTitle:@"返回" forState:UIControlStateNormal];
    [buttonOne addTarget:self action:@selector(buttonEvent:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttonOne];
    
    imgViewOne=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [imgViewOne setFrame:CGRectMake(70, 100, 200, 200)];


    [imgViewOne setImage:[UIImage imageNamed:@"005.jpg"] forState:UIControlStateNormal];
    imgViewOne.userInteractionEnabled=YES;
    [imgViewOne addTarget:self action:@selector(imgEvent:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:imgViewOne];
    [self performSelectorOnMainThread:@selector(changeImage:) withObject:nil waitUntilDone:YES];
   
}

-(void)changeImage:(id)sender
{
    if ([[self sender]isEqualToString:@"001.jpg"]) {
        NSLog(@"001");
        [imgViewOne setImage:[UIImage imageNamed:[self sender]] forState:UIControlStateNormal];
    }
    if ([[self sender]isEqualToString:@"002.jpg"]) {
        [imgViewOne setImage:[UIImage imageNamed:[self sender]] forState:UIControlStateNormal];
        NSLog(@"002");
    }
}

-(void)buttonEvent:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)imgEvent:(id)sender
{
    ImageViewController *imgViews=[[ImageViewController alloc] init];
    poper=[[UIPopoverController alloc] initWithContentViewController:imgViews];
    poper.delegate=self;
    poper.popoverContentSize=CGSizeMake(200, 200);
    [poper presentPopoverFromRect:CGRectMake(50, 50, 220, 300) inView:self.view permittedArrowDirections:UIPopoverArrowDirectionLeft animated:YES];
    
    
    [imgViews release];
}


-(void)dealloc
{
    [poper release];
    poper=nil;

    
    [super dealloc];
}

@end
