//
//  Person.h
//  MVVMDemo
//
//  Created by 小蔡 on 16/8/13.
//  Copyright © 2016年 xiaocai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, copy, readonly) NSString *name;
@property (nonatomic, strong, readonly) NSDate *birthdate;
@property (nonatomic, assign, readonly) float height;

- (instancetype)initWithName:(NSString *)name birthdate:(NSDate *)birthdata height:(float)height;

@end
