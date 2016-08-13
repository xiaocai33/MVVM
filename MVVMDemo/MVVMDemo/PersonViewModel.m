//
//  PersonViewModel.m
//  MVVMDemo
//
//  Created by 小蔡 on 16/8/13.
//  Copyright © 2016年 xiaocai. All rights reserved.
//

#import "PersonViewModel.h"
#import "Person.h"

@interface PersonViewModel()

@property (nonatomic, strong) Person *person;

@end

@implementation PersonViewModel

- (Person *)person{
    if (_person == nil) {
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        formatter.dateFormat = @"yyyy-MM-dd";
        NSString *dateStr = @"1996-03-21";
        NSDate *date = [formatter dateFromString:dateStr];
        _person = [[Person alloc] initWithName:@"小明" birthdate:date height:175.0];
    }
    return _person;
}

- (instancetype)init{
    if (self = [super init]) {
        // 如果要用懒加载 person, 需要调用 get 方法,用 self.person 调用来保证
        _nameText = self.person.name;
        
        NSDateFormatter *formate = [[NSDateFormatter alloc] init];
        formate.dateFormat = @"yyyy-MM-dd";
        _birthdateText = [formate stringFromDate:_person.birthdate];
        
        _heightText = [NSString stringWithFormat:@"%.2f", _person.height];
    }
    return self;
}

@end
