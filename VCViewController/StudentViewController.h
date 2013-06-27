//
//  StudentViewController.h
//  exercise201130619
//
//  Created by 张翼德 on 13-6-20.
//  Copyright (c) 2013年 赵云. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StudentViewController : NSObject

@property(nonatomic,retain)NSString *name_a;
@property(nonatomic,retain)NSString *Tel_a;
-(id)initWithName:(NSString*)name
              Tel:(NSString*)tel;

@end
