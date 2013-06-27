//
//  WorkerInforViewController.m
//  exercise201130619
//
//  Created by 张翼德 on 13-6-20.
//  Copyright (c) 2013年 赵云. All rights reserved.
//

#import "WorkerInforViewController.h"
#import "InforViewController.h"
#import "TableViewController.h"

@interface WorkerInforViewController ()
@end
@implementation WorkerInforViewController
@synthesize tview;

- (void)viewDidLoad
{
    [super viewDidLoad];
//    [self.view setFrame:CGRectMake(300, 20, 524, 768)];
    [self.view setFrame:CGRectMake(self.view.frame.size.width*0.2, 0, self.view.frame.size.width*1.2, self.view.frame.size.height)];

    self.view.backgroundColor=[UIColor blackColor];
    
     
    tabview=[[UITableView alloc]initWithFrame:CGRectMake(4, 0, 720, 768) style:UITableViewStylePlain];
    tabview.delegate=self;
    tabview.dataSource=self;
    tabview.separatorStyle=UITableViewCellSeparatorStyleSingleLine;
    tabview.rowHeight=60;
    [self.view addSubview:tabview];
    [tabview release];
    
    UINavigationBar *nav=[[UINavigationBar alloc]initWithFrame:CGRectMake(4, 0, 614, 60)];
    UINavigationItem *navigationItem=[[UINavigationItem alloc]initWithTitle:nil];
   UIBarButtonItem *itema=[[[UIBarButtonItem alloc]initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:@selector(backMathod:)]autorelease];
   navigationItem.leftBarButtonItem=itema;
    
    UIBarButtonItem *sys=[[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(saveMathod:)]autorelease];
    navigationItem.rightBarButtonItem=sys;
//   UIBarButtonItem *itemb =[[[UIBarButtonItem alloc]initWithTitle:@"Save" style:UIBarButtonItemStylePlain target:self action:@selector(saveMathod:)]autorelease];
//   navigationItem.rightBarButtonItem=itemb;
    
	[nav pushNavigationItem:navigationItem animated:NO];    
    [self.view addSubview:nav];
    [nav release];
    
  
	
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}
-(void)backMathod:(UIBarButtonItem*)back{
    
}
-(void)saveMathod:(UIBarButtonItem*)save{
    
}

//-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//{
//    return 2;
//}

@end
