//
//  tableView.m
//  exercise201130619
//
//  Created by 张 伟 on 13-6-20.
//  Copyright (c) 2013年 赵云. All rights reserved.
//

#import "tableView.h"
#import "Message.h"
#import "NewCell.h"

#define pc0 @"celebrate.jpg"
#define pc1 @"page1.jpg"
#define pc2 @"page2.jpg"
#define pc3 @"page3.jpg"
#define pc4 @"page4.jpg"
#define pc5 @"page5.jpg"

@interface tableView ()

@end

@implementation tableView
@synthesize tablearray,viewer;

-(id)init
{
    self=[super init];
    if (self) {
        self.tablearray=[NSMutableArray array];
        NSMutableArray *marray=[NSMutableArray arrayWithObjects:@"刘庆轩",@"15899877789",@"马健",@"13146132587",@"马海龙",@"975807058",@"张剑",@"446716505",@"张伟",@"15143163210",@"pingguo",@"sunao",@"Allen",@"未知", nil];
        
        for (int i=0; i<13; i++) {
            Message *s=nil;
            NSString *name=[marray objectAtIndex:i];
            i++;
            NSString *phone=[marray objectAtIndex:i];
            s=[[Message alloc]initWithName:name Phone:phone];
            [self.tablearray addObject:s];
            [s release];
        }
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.viewer=[[UIView alloc] initWithFrame:CGRectMake(256, 0, self.view.frame.size.width*0.9, self.view.frame.size.height)];
    [self.viewer setBackgroundColor:[UIColor redColor]];

    //两条竖线
    UILabel *labels=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 5, self.view.frame.size.height)];
    [labels setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:labels];
    [labels release];
    UILabel *labels0=[[UILabel alloc] initWithFrame:CGRectMake(256, 0, 5, self.view.frame.size.height)];
    [labels0 setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:labels0];
    [labels0 release];
    
    tableView0=[[UITableView alloc]initWithFrame:CGRectMake(6, 0, 250, 1424)];
    tableView0.delegate=self;
    tableView0.dataSource=self;
    tableView0.separatorStyle=UITableViewCellSeparatorStyleSingleLine;
    tableView0.rowHeight=100;
    tableView0.backgroundColor=[UIColor blackColor];
    [self.view addSubview:tableView0];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.tablearray count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    array=[NSMutableArray arrayWithObjects:pc0,pc1,pc2,pc3,pc4, nil];
    
    static NSString *string=@"0";
    NewCell *cell=[tableView0 dequeueReusableCellWithIdentifier:string];
    if (nil==cell) {
        cell=[[[NewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:string]autorelease];
    }
    Message *s=[tablearray objectAtIndex:indexPath.row];
    if (indexPath.row<5) {
        cell.imgView.image=[UIImage imageNamed:[array objectAtIndex:indexPath.row]];
    } else {
        cell.imgView.image=[UIImage imageNamed:[array objectAtIndex:(indexPath.row-5)]];
    }
    cell.labelName.text=[@"name:" stringByAppendingString:s.strName];
    cell.labelPhone.text=[@"Tel:" stringByAppendingString:s.strPhone];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    Message *s=[tablearray objectAtIndex:indexPath.row];
    NSString *a_name=s.strName;
    NSString *a_phone=s.strPhone;
    NSInteger a_img=indexPath.row;
    page=[[NewPage alloc]initWithName:a_name phone:a_phone image:a_img];
    viewer=page.view;
    [self.view addSubview:viewer];
}

@end
