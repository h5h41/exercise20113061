//
//  NewPage.m
//  exercise201130619
//
//  Created by 张 伟 on 13-6-20.
//  Copyright (c) 2013年 赵云. All rights reserved.
//

#import "NewPage.h"
#define pc0 @"celebrate.jpg"
#define pc1 @"page1.jpg"
#define pc2 @"page2.jpg"
#define pc3 @"page3.jpg"
#define pc4 @"page4.jpg"
#define pc5 @"page5.jpg"

@interface NewPage ()

@end

@implementation NewPage
@synthesize stName,stPhone;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(id)initWithName:(NSString *)a_name phone:(NSString *)a_phone image:(NSInteger)a_img
{
    self=[super init];
    if (self) {
        self.stName=a_name;
        self.stPhone=a_phone;
        stImg=a_img;
    }
    return self;
}

-(void)dealloc
{
    [self.stName release];
    [self.stPhone release];
    [super dealloc];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view setFrame:CGRectMake(self.view.frame.size.width*0.2, 0, self.view.frame.size.width*1.2, self.view.frame.size.height)];

    array=[NSMutableArray arrayWithObjects:pc0,pc1,pc2,pc3,pc4,pc0,pc1,pc2,pc3,pc4, nil];
    //图片
    UIImageView *imgView=[[UIImageView alloc]initWithFrame:CGRectMake(200, 20, 200, 250)];
    UIImage *img=[UIImage imageNamed:[array objectAtIndex:stImg]];
    imgView.image=img;
    [img release];
    [self.view addSubview:imgView];
    [imgView release];
    
    NSString *name=[@"Name:" stringByAppendingString:self.stName];
    NSString *phone=[@"Tel:" stringByAppendingString:self.stPhone];
    
    NSArray *array0=[NSArray arrayWithObjects:name,phone,nil];
    for (int i=0; i<2; i++) {
        UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(450, 80+80*i, 250, 40)];
        label.backgroundColor=[UIColor blackColor];
        label.textColor=[UIColor whiteColor];
        label.text=[array0 objectAtIndex:i];
        [self.view addSubview:label];
        [label release];
    }
    
    //图片右侧横线
    for (int i=0; i<2; i++) {
        UILabel *ilabel0=[[UILabel alloc]initWithFrame:CGRectMake(450, 121+80*i, 250, 4)];
        ilabel0.backgroundColor=[UIColor grayColor];
        [self.view addSubview:ilabel0];
    }
    
    UILabel *labelBottom=[[UILabel alloc]initWithFrame:CGRectMake(200, 340, 450, 40)];
    labelBottom.text=@"123456sadfgs6d5g4f5s6da4gf";
    labelBottom.textColor=[UIColor whiteColor];
    labelBottom.backgroundColor=[UIColor blackColor];
    [self.view addSubview:labelBottom];
    [labelBottom release];
    
    UILabel *labelSign=[[UILabel alloc]initWithFrame:CGRectMake(200, 382, 450, 4)];
    labelSign.backgroundColor=[UIColor grayColor];
    [self.view addSubview:labelSign];
    [labelSign release];
}

@end
