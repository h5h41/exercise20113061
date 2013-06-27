//
//  StudentViewController.m
//  exercise201130619
//
//  Created by 张翼德 on 13-6-20.
//  Copyright (c) 2013年 赵云. All rights reserved.
//

#import "StudentViewController.h"

@interface StudentViewController ()

@end

@implementation StudentViewController
@synthesize name_a,Tel_a;

-(id)initWithName:(NSString *)name Tel:(NSString *)tel
{
    self=[super init];
    if (self) {
        self.name_a=name;
        self.Tel_a=tel;
    }
    return self;
}


@end
