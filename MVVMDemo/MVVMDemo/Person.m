//
//  Person.m
//  MVVMDemo
//
//  Created by 小蔡 on 16/8/13.
//  Copyright © 2016年 xiaocai. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithName:(NSString *)name birthdate:(NSDate *)birthdata height:(float)height{
    self = [super init];
    if (self) {
        _name = name;
        _birthdate = birthdata;
        _height = height;
    }
    return self;
}

@end
