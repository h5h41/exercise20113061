//
//  Message.m
//  exercise201130619
//
//  Created by 张 伟 on 13-6-19.
//  Copyright (c) 2013年 赵云. All rights reserved.
//

#import "Message.h"

@interface Message ()

@end

@implementation Message
@synthesize strName;
@synthesize strPhone;

-(id)initWithName:(NSString *)Name Phone:(NSString *)Phone
{
    self=[super init];
    if(self)
    {
        self.strName=Name;
        self.strPhone=Phone;
    }
    return self;
}
-(void)dealloc
{
    [self.strName release];
    [self.strPhone release];
    [super dealloc];
}
@end
