//
//  TestController.m
//  TestAutoLayout
//
//  Created by Zacks Tsang  on 13-9-10.
//  Copyright (c) 2013年 www.aiysea.com. All rights reserved.
//

#import "TestController.h"

@interface TestController ()

@end

@implementation TestController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.translatesAutoresizingMaskIntoConstraints=NO;
    UIView *v1=[[UIView alloc] init];
    UIView *v2=[[UIView alloc] init];
    UIView *v3=[[UIView alloc] init];
    v1.translatesAutoresizingMaskIntoConstraints=NO;
    v2.translatesAutoresizingMaskIntoConstraints=NO;
    v3.translatesAutoresizingMaskIntoConstraints=NO;
    v1.backgroundColor=[UIColor darkGrayColor];
    v2.backgroundColor=[UIColor blueColor];
    v3.backgroundColor=[UIColor redColor];
    
    [self.view addSubview:v1];
    [self.view addSubview:v2];
    [self.view addSubview:v3];
    
    
    NSDictionary *views=NSDictionaryOfVariableBindings(v1,v2,v3);
    
    NSString *vfl=@"V:|-[v1(v2)]-[v2(v3)]-[v3]-|";
    
    NSArray *constraint=[NSLayoutConstraint constraintsWithVisualFormat:vfl options:NSLayoutFormatAlignAllRight metrics:nil views:views];
    
    
    [self.view addConstraints:constraint];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|-[v1(100)]" options:0 metrics:nil views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"[v2(20)]" options:0 metrics:nil views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"[v3(50)]" options:0 metrics:nil views:views]];
//    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:v1 attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0]];
    
//     [self.view addConstraint:[NSLayoutConstraint constraintWithItem:v1 attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
