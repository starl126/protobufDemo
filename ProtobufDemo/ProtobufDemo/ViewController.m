//
//  ViewController.m
//  ProtobufDemo
//
//  Created by 天边的星星 on 2019/8/21.
//  Copyright © 2019 starxin. All rights reserved.
//

#import "ViewController.h"
#import "TestPackage.pbobjc.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    KFATestMessage* message = [KFATestMessage message];
    message.name = @"Ponl";
    message.sex = @"male";
    message.age = @"18";
    NSData* messageData = message.data;
    
    KFATestMessage* message2 = [KFATestMessage parseFromData:messageData error:nil];
    NSLog(@"name:%@ sex:%@ age:%@",message2.name,message2.sex,message2.age);

}


@end
