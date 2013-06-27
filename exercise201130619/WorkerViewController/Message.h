//
//  Message.h
//  exercise201130619
//
//  Created by 张 伟 on 13-6-19.
//  Copyright (c) 2013年 赵云. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Message : UIViewController

@property(nonatomic,retain)NSString *strName;
@property(nonatomic,retain)NSString *strPhone;

-(id)initWithName:(NSString *)Name Phone:(NSString *)Phone;
@end
