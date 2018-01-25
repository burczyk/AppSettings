//
//  MySettings.m
//  AppSettings
//
//  Created by Kamil Burczyk on 08.12.2013.
//  Copyright (c) 2013 Sigmapoint. All rights reserved.
//

#import "MySettings.h"

@implementation MySettings

- (void)loadExampleValues
{
    _exampleDate = [NSDate date];
    _exampleString = @"Example string ąęść";
    _exampleNumber = @123;
    _exampleInt = 456;
    _exampleBool = YES;
    _exampleData = [@"test data" dataUsingEncoding:NSUTF8StringEncoding];
    
    _myNestedSettings = [[MyNestedSettings alloc] init];
    [_myNestedSettings loadExampleValue];
}

@end
