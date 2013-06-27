//
//  TableViewController.m
//  exercise201130619
//
//  Created by 张翼德 on 13-6-20.
//  Copyright (c) 2013年 赵云. All rights reserved.
//

#import "TableViewController.h"
#import "StudentViewController.h"
#import "InforViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController
@synthesize array_a=array;

-(id)init
{
    self=[super init];
    if (self) {
        self.array_a=[NSMutableArray array];
        for (int i=0; i<10; i++) {
            StudentViewController *s=[[StudentViewController alloc]initWithName:@"name" Tel:@"tel"];
            [self.array_a addObject:s];
            [s release];
        }
    }
    return self;
}
-(void)dealloc{
    [array release];
    [super dealloc];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
//    tabview=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, 296, 768)];
//    tabview.delegate=self;
//    tabview.dataSource=self;
//    tabview.separatorStyle=UITableViewCellSeparatorStyleSingleLine;
//    tabview.rowHeight=100;
//    tabview.backgroundColor=[UIColor blackColor];
//    [self.view addSubview:tabview];
//    [tabview release];
    
    
    UILabel *lable1=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 4, 768)];
    lable1.backgroundColor=[UIColor grayColor];
    [self.view addSubview:lable1];
    [lable1 release];
    
    UILabel *lable2=[[UILabel alloc]initWithFrame:CGRectMake(296, 0, 4, 768)];
    lable2.backgroundColor=[UIColor grayColor];
    [self.view addSubview:lable2];
    [lable2 release];
    
}
//-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//    return [self.array_a count];
//}
//-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    static NSString *cel=@"cell";
//    InforViewController *cell=[tableView dequeueReusableCellWithIdentifier:cel];
//    if (nil==cell) {
//        cell=[[[InforViewController alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cel]autorelease];
//    }
//    StudentViewController *stu=[self.array_a objectAtIndex:indexPath.row];
//    cell.nameLable.text=stu.name_a;
//    cell.TelLable.text=stu.Tel_a;
//    cell.imgView.image=[UIImage imageNamed:@"003.jpg"];
//    return cell;
//    
//}
@end
