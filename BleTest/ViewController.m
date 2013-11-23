//
//  ViewController.m
//  BleTest
//
//  Created by hiro kuma on 2013/11/23.
//  Copyright (c) 2013年 hiro99ma. All rights reserved.
//

#import "ViewController.h"
#import "BleUtils.h"

@interface ViewController ()

@end

@implementation ViewController {
    BleUtils *mBleUtils;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    mBleUtils = [[BleUtils alloc] init];
    [mBleUtils startScan];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
