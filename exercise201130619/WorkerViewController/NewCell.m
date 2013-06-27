//
//  NewCell.m
//  exercise201130619
//
//  Created by 张 伟 on 13-6-19.
//  Copyright (c) 2013年 赵云. All rights reserved.
//

#import "NewCell.h"

@implementation NewCell
@synthesize imgView,labelName,labelPhone;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.imgView=[[[UIImageView alloc]initWithFrame:CGRectMake(10, 25, 40, 50)]autorelease];
        [self.contentView addSubview:self.imgView];
        
        self.labelName=[[[UILabel alloc]initWithFrame:CGRectMake(75, 25, 100, 20)]autorelease];
        self.labelName.backgroundColor=[UIColor blackColor];
        self.labelName.textColor=[UIColor whiteColor];
        [self.contentView addSubview:self.labelName];
        
        self.labelPhone=[[[UILabel alloc]initWithFrame:CGRectMake(75, 50, 200, 20)]autorelease];
        self.labelPhone.backgroundColor=[UIColor blackColor];
        self.labelPhone.textColor=[UIColor whiteColor];
        [self.contentView addSubview:self.labelPhone];
    }
    return self;
}

@end
