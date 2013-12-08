//
//  MyNestedSettings.h
//  AppSettings
//
//  Created by Kamil Burczyk on 08.12.2013.
//  Copyright (c) 2013 Sigmapoint. All rights reserved.
//

#import "AppSettings.h"

@interface MyNestedSettings : AppSettings

@property (nonatomic, strong) NSString *nestedSettingsString;

- (void)loadExampleValue;

@end
