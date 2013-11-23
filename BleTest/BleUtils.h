//
//  BleUtils.h
//  BleTest
//
//  Created by hiro kuma on 2013/11/23.
//  Copyright (c) 2013年 hiro99ma. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreBluetooth/CoreBluetooth.h>

@interface BleUtils : NSObject

- (id)init;
- (BOOL)startScan;

@end
