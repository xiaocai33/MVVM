//
//  PersonViewModel.h
//  MVVMDemo
//
//  Created by 小蔡 on 16/8/13.
//  Copyright © 2016年 xiaocai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PersonViewModel : NSObject

@property (nonatomic, copy, readonly) NSString *nameText;
@property (nonatomic, copy, readonly) NSString *birthdateText;
@property (nonatomic, copy, readonly) NSString *heightText;

@end
