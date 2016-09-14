//
//  VIPERViewControllerTests.m
//  ViperGenerator
//
//  Created by Sameh Mabrouk on 2/27/16.
//  Copyright © 2016 smapps. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "VIPERProtocols.h"

#import "VIPERViewController.h"

@interface VIPERViewControllerTests : XCTestCase

@property (nonatomic, strong) VIPERViewController *controller;

@property (nonatomic, strong) id mockOutput;

@end

@implementation VIPERViewControllerTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.

    self.controller = [[VIPERViewController alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(VIPERPresenterProtocol));

    self.controller.presenter = self.mockOutput;
}

- (void)tearDown {
    self.controller = nil;

    self.mockOutput = nil;
    
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
