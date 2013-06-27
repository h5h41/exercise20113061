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
#import "tableView.h"


@interface WorkerInforViewController ()
@end
@implementation WorkerInforViewController
@synthesize tview;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setFrame:CGRectMake(261, 0, self.view.frame.size.width*1.2, self.view.frame.size.height)];
    self.view.backgroundColor=[UIColor blackColor];
    
    
    tabview=[[UITableView alloc]initWithFrame:CGRectMake(1, 10, 600, 700) style:UITableViewStyleGrouped];
    tabview.delegate=self;
    tabview.dataSource=self;
    tabview.separatorStyle=UITableViewCellSeparatorStyleSingleLine;
    tabview.rowHeight=60;
    [self.view addSubview:tabview];
    [tabview release];

    UINavigationBar *nav=[[UINavigationBar alloc]initWithFrame:CGRectMake(1, 2, 600, 40)];
    UINavigationItem *navigationItem=[[UINavigationItem alloc]init];
    
    UIBarButtonItem *itema=[[[UIBarButtonItem alloc]initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:@selector(backMathod:)]autorelease];
    navigationItem.leftBarButtonItem=itema;
    
    UIBarButtonItem *sys=[[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(saveMathod:)]autorelease];
    navigationItem.rightBarButtonItem=sys;
    
	[nav pushNavigationItem:navigationItem animated:NO];    
    [self.view addSubview:nav];
    [nav release];
    
  
	
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *strName=@"cell";
    UITableViewCell *cells=[tableView dequeueReusableCellWithIdentifier:strName];
    if (nil==cells) {
        cells=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:strName];
    }
    return cells;
}
-(void)backMathod:(UIBarButtonItem*)back
{
   
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(void)saveMathod:(UIBarButtonItem*)save{
   
}

@end
