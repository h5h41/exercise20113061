//
//  ImageViewController.m
//  exercise201130619
//
//  Created by iFeng on 13-6-19.
//  Copyright (c) 2013年 赵云. All rights reserved.
//

#import "ImageViewController.h"
#import "BaseViewController.h"
#import "ViewController.h"
@interface ImageViewController ()

@end

@implementation ImageViewController
@synthesize scrViewOne,imgViewOne,arrayOne;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setFrame:CGRectMake(0, 0, 200, 200)];
    
    self.scrViewOne=[[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    scrViewOne.delegate=self;
    scrViewOne.showsVerticalScrollIndicator=NO;
    scrViewOne.pagingEnabled=YES;
    scrViewOne.contentSize=CGSizeMake(200, 200*8);
    
    self.arrayOne=[NSMutableArray arrayWithObjects:@"001.jpg",@"002.jpg",@"003.jpg",@"004.jpg",@"005.jpg",@"006.jpg",@"007.jpg",@"008.jpg", nil];
    
    for (int i=0; i<8; i++) {
        self.imgViewOne=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.imgViewOne setFrame:CGRectMake(0, 200*i, 200, 200)];
        [self.imgViewOne setImage:[UIImage imageNamed:[arrayOne objectAtIndex:i]] forState:UIControlStateNormal];
        self.imgViewOne.tag=i;
        [self.imgViewOne addTarget:self action:@selector(imgEvents:) forControlEvents:UIControlEventTouchUpInside];
        [scrViewOne addSubview:self.imgViewOne];
    }
    [self.view addSubview:self.scrViewOne];
}

-(void)imgEvents:(id)sender
{
    switch ([sender tag]) {
        case 0:
            NSLog(@"0");
//            BaseViewController *baseView=[[BaseViewController alloc] init];
//            baseView.sender=[self.arrayOne objectAtIndex:0];
//            [baseView viewDidLoad];
            
            [self.imgViewOne setBackgroundImage:[UIImage imageNamed:[self.arrayOne objectAtIndex:[sender tag]]] forState:UIControlStateNormal];
            break;
        case 1:
            NSLog(@"");
            BaseViewController *baseViewb=[[BaseViewController alloc] init];
            baseViewb.sender=[self.arrayOne objectAtIndex:1];
            [baseViewb viewDidLoad];
            break;
        default:
            break;
    }
}

-(void)dealloc
{
    [scrViewOne release];
    scrViewOne=nil;
    
    [super dealloc];
}
@end
