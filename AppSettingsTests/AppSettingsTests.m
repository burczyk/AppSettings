//
//  AppSettingsTests.m
//  AppSettingsTests
//
//  Created by Kamil Burczyk on 08.12.2013.
//  Copyright (c) 2013 Sigmapoint. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MySettings.h"

@interface AppSettingsTests : XCTestCase

@property (nonatomic, strong) MySettings *mySettings;

@end

@implementation AppSettingsTests

- (void)setUp
{
    [super setUp];
    _mySettings = [[MySettings alloc] init];
    [_mySettings loadExampleValues];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testPropertiesCount
{
    NSArray *d = [_mySettings propertiesNames];
    XCTAssertEqualObjects(@(d.count), @7, @"");
}

- (void)testSerialization
{
    NSDictionary *d = [_mySettings dictionaryOfPropertiesAndValues];
    XCTAssertNotNil(d, @"");
    NSLog(@"dict: %@", d);
}

- (void)testDeserialization
{
    NSDictionary *d = [_mySettings dictionaryOfPropertiesAndValues];
    MySettings *ms = [[MySettings alloc] initWithDictionary:d];
    
    XCTAssertTrue(ms.exampleBool, @"");
    XCTAssertNotNil(ms.exampleDate, @"");
    XCTAssertNotNil(ms.exampleNumber, @"");
    XCTAssertNotNil(ms.exampleString, @"");
    XCTAssertEqual(ms.exampleInt, 456, @"");
}

- (void)testWhole
{
    NSDictionary *d = [_mySettings dictionaryOfPropertiesAndValues];
    MySettings *ms = [[MySettings alloc] initWithDictionary:d];
    NSDictionary *d2 = [ms dictionaryOfPropertiesAndValues];
    
    for (NSString *key in [d allKeys]) {
        XCTAssertTrue([[d2 allKeys] containsObject:key], @"");
    }
}

- (void)testSave
{
    [_mySettings save];
}

- (void)testLoad
{
    [_mySettings save];
    MySettings *ms = [MySettings load];
    XCTAssertNotNil(ms, @"");
    
    NSLog(@"loaded settings: %@", ms);
    NSLog(@"loaded settings: %@", [ms dictionaryOfPropertiesAndValues]);
}

- (void)testCustomKey
{
    _mySettings.exampleNumber = @123456;
    _mySettings.exampleString = @"changed string";
    [_mySettings saveUnderKey:@"testKey"];
    MySettings *ms = [MySettings loadFromKey:@"testKey"];
    XCTAssertNotNil(ms, @"");
    
    NSLog(@"loaded settings from custom key: %@", [ms dictionaryOfPropertiesAndValues]);
}

- (void)testEmptyData {
  _mySettings.exampleData = nil;
  [_mySettings saveUnderKey:@"testEmptyData"];
  MySettings *ms = [MySettings loadFromKey:@"testEmptyData"];
  XCTAssertNotNil(ms, @"");
}

@end
