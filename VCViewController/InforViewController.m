//
//  InforViewController.m
//  exercise201130619
//
//  Created by 张翼德 on 13-6-20.
//  Copyright (c) 2013年 赵云. All rights reserved.
//

#import "InforViewController.h"

@interface InforViewController ()

@end

@implementation InforViewController
@synthesize nameLable=name;
@synthesize TelLable=Tel;
@synthesize imageView=img;

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self=[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        self.imgView=[[[UIImageView alloc]initWithFrame:CGRectMake(20, 10, 60, 80)]autorelease];
        [self.contentView addSubview:self.imgView];
        self.nameLable=[[[UILabel alloc]initWithFrame:CGRectMake(120, 10,100, 20)]autorelease];
        self.nameLable.textColor=[UIColor whiteColor];
        self.nameLable.backgroundColor=[UIColor clearColor];
        [self.contentView addSubview:self.nameLable];
        self.TelLable=[[[UILabel alloc]initWithFrame:CGRectMake(130, 55, 100, 20)]autorelease];
        self.TelLable.textColor=[UIColor whiteColor];
        self.TelLable.backgroundColor=[UIColor clearColor];
        [self.contentView addSubview:self.TelLable];
        
    }
    return self ;
}
-(void)dealloc
{
    [img release];
    [name release];
    [Tel release];
    
    [super dealloc];
    
}
@end
