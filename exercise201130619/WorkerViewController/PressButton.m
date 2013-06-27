//
//  PressButton.m
//  exercise201130619
//
//  Created by 张 伟 on 13-6-20.
//  Copyright (c) 2013年 赵云. All rights reserved.
//

#import "PressButton.h"
#import "WorkerInforViewController.h"
#import "VCViewController.h"
#import "WorkerViewController.h"

@interface PressButton ()

@end

@implementation PressButton
@synthesize ChangeView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setFrame:CGRectMake(350, 10, 500, 768)];
    
     self.ChangeView=[[UIView alloc] initWithFrame:CGRectMake(0, 0, 500, 768)];
    [self.view addSubview:self.ChangeView];
    
    NSArray *arrayOne=[NSArray arrayWithObjects:@"确认1",@"确认2", nil];
    for (int i=0; i<2; i++) {
        UIButton *buttonOne=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        [buttonOne setFrame:CGRectMake(0 , 470+100*i, 400, 50)];
        [buttonOne setTitle:[arrayOne objectAtIndex:i] forState:UIControlStateNormal];
        buttonOne.tag=i;
        [buttonOne addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:buttonOne];
    }
}

-(void)buttonPressed:(UIButton *)sender
{
    WorkerInforViewController *worker=[[[WorkerInforViewController alloc]init]autorelease];
    worker.modalPresentationStyle=UIModalPresentationFormSheet;
    [self presentViewController:worker animated:YES completion:nil];
    worker.view.superview.frame=CGRectMake(410, 20, 900, 788);
//    worker.view.superview.center=self.view.center;
}
@end
