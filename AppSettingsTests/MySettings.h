//
//  MySettings.h
//  AppSettings
//
//  Created by Kamil Burczyk on 08.12.2013.
//  Copyright (c) 2013 Sigmapoint. All rights reserved.
//

#import "AppSettings.h"
#import "MyNestedSettings.h"

@interface MySettings : AppSettings

@property (nonatomic, strong) NSDate *exampleDate;
@property (nonatomic, strong) NSString *exampleString;
@property (nonatomic, strong) NSNumber *exampleNumber;
@property (nonatomic, assign) int exampleInt;
@property (nonatomic, assign) BOOL exampleBool;

@property (nonatomic, strong) MyNestedSettings *myNestedSettings;

- (void)loadExampleValues;

@end
