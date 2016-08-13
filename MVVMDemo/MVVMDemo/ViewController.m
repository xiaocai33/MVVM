//
//  ViewController.m
//  MVVMDemo
//
//  Created by 小蔡 on 16/8/13.
//  Copyright © 2016年 xiaocai. All rights reserved.
//

#import "ViewController.h"
//#import "Person.h"
#import "PersonViewModel.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *birthdateLabel;
@property (weak, nonatomic) IBOutlet UILabel *heightLabel;
//@property (nonatomic, strong) Person *person;
@property (nonatomic, strong) PersonViewModel *personModel;

@end

@implementation ViewController
// MVC
//- (Person *)person{
//    if (_person == nil) {
//        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
//        formatter.dateFormat = @"yyyy-MM-dd";
//        NSString *dateStr = @"1996-03-21";
//        NSDate *date = [formatter dateFromString:dateStr];
//        _person = [[Person alloc] initWithName:@"小明" birthdate:date height:175.0];
//    }
//    return _person;
//}


- (void)viewDidLoad {
    [super viewDidLoad];
    
//    //传统的 MVC 模式
//    self.nameLabel.text = self.person.name;
//    
//    NSDateFormatter *formate = [[NSDateFormatter alloc] init];
//    formate.dateFormat = @"yyyy-MM-dd";
//    self.birthdateLabel.text = [formate stringFromDate:self.person.birthdate];
//    
//    self.heightLabel.text = [NSString stringWithFormat:@"%.2f", self.person.height];
    
    
    // MVVM 模式
    self.personModel = [[PersonViewModel alloc] init];
    self.nameLabel.text = self.personModel.nameText;
    
    self.birthdateLabel.text = self.personModel.birthdateText;

    self.heightLabel.text = self.personModel.heightText;
    
}



@end
