//
//  BleUtils.m
//  BleTest
//
//  @ref https://sites.google.com/site/bluexeyexcrow/bluetooth/ble-ios/central
//
//  Created by hiro kuma on 2013/11/23.
//  Copyright (c) 2013年 hiro99ma. All rights reserved.
//

#import "BleUtils.h"

@interface BleUtils() <CBCentralManagerDelegate> {
    CBCentralManager *mCentralManager;
}
@end

@implementation BleUtils

- (id)init
{
    if (self = [super init]) {
        [self onCreate];
    }
    
    return self;
}

- (void)onCreate
{
    if (mCentralManager!= nil) {
        NSLog(@"manager already created");
        return;
    }
    mCentralManager = [[CBCentralManager alloc] initWithDelegate:self queue:nil];
}

- (BOOL)startScan
{
    [mCentralManager scanForPeripheralsWithServices:nil options:nil];
    return YES;
}

//from CBCentralManagerDelegate
- (void)centralManager:(CBCentralManager *)central didDiscoverPeripheral:(CBPeripheral *)peripheral advertisementData:(NSDictionary *)advertisementData RSSI:(NSNumber *)RSSI
{
    NSLog(@"found [%@]", peripheral.name);
}

//from CBCentralManagerDelegate
- (void)centralManagerDidUpdateState:(CBCentralManager *)central
{
    NSLog(@"status update");
}

@end


