//
//  LocalWeatherTests.m
//  LocalWeatherTests
//
//  Created by Chris Woodard on 7/4/13.
//  Copyright (c) 2013 Chris Woodard.. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "FakeWeatherUndergroundAPI.h"
#import "WeatherFetcher.h"

@interface LocalWeatherTests : XCTestCase
@property (nonatomic, strong) FakeWeatherUndergroundAPI *mockAPI;
@property (nonatomic, strong) WeatherFetcher *fetcher;
@property (nonatomic, assign) BOOL didFinish;
@property (nonatomic, assign) BOOL didFail;
@end

@implementation LocalWeatherTests

- (void)setUp
{
    [super setUp];

    self.mockAPI = [FakeWeatherUndergroundAPI sharedFakeAPI];
    self.fetcher = [WeatherFetcher defaultFetcher];
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

-(void)testFetcherNotNil
{
    XCTAssertNotNil( _fetcher, @"Unable to allocate fetcher");
}

-(void)testMockAPINotNil
{
    XCTAssertNotNil( _mockAPI, @"Unable to allocate mock API");
}

-(void)testMockWeatherAPITampaFLConditionsNotNil
{
    self.didFinish = NO;
    self.didFail = NO;
    __block NSError *err = nil;
    __block CurrentWeather *weather = nil;
    self.mockAPI.httpStatusCode = 200;
    
    [_fetcher fetchCurrentLocalWeatherWithCompletion:^(NSHTTPURLResponse *response, NSError *error){
            weather = [_fetcher currentWeather];
            self.didFinish = YES;
            if(nil == error)
                self.didFail = NO;
            else
                self.didFail = YES;
            err = [error copy];
        }
    ];
    
    while(!self.didFinish && !self.didFail)
    {
        [[NSRunLoop currentRunLoop] runUntilDate:[NSDate dateWithTimeIntervalSinceNow:5]];
    }
    
    XCTAssertNotNil( weather, @"weather should not be nil" );
}

-(void)testMockWeatherAPITampaFLConditionsGotExpectedValue
{
    self.didFinish = NO;
    self.didFail = NO;
    __block NSError *err = nil;
    __block CurrentWeather *weather = nil;
    self.mockAPI.httpStatusCode = 200;
    
    [_fetcher fetchCurrentLocalWeatherWithCompletion:^(NSHTTPURLResponse *response, NSError *error){
            weather = [_fetcher currentWeather];
            self.didFinish = YES;
            if(nil == error)
                self.didFail = NO;
            else
                self.didFail = YES;
            err = [error copy];
        }
    ];
    
    while(!self.didFinish && !self.didFail)
    {
        [[NSRunLoop currentRunLoop] runUntilDate:[NSDate dateWithTimeIntervalSinceNow:5]];
    }
    
    XCTAssertNotNil( weather, @"weather should not be nil" );
}

-(void)testMockWeatherAPITampaFLForecastNotNil
{
    self.didFinish = NO;
    self.didFail = NO;
    __block NSError *err = nil;
    __block WeatherForecast *forecast = nil;
    self.mockAPI.httpStatusCode = 200;
    
    [_fetcher fetch3DayLocalForecastWithCompletion:^(NSHTTPURLResponse *response, NSError *error){
            forecast = [_fetcher lastForecast];
            self.didFinish = YES;
            if(nil == error)
                self.didFail = NO;
            else
                self.didFail = YES;
        
            err = [error copy];
        }
    ];
    
    while(!self.didFinish && !self.didFail)
    {
        [[NSRunLoop currentRunLoop] runUntilDate:[NSDate dateWithTimeIntervalSinceNow:5]];
    }
    
    XCTAssertNotNil( forecast, @"forecast should not be nil" );
}

-(void)testMockWeatherAPITampaFLForecast400Status
{
    self.didFinish = NO;
    self.didFail = NO;
    __block NSError *err = nil;
    __block WeatherForecast *forecast = nil;
    self.mockAPI.sendNilForecast = YES;
    self.mockAPI.httpStatusCode = 400;
    __block NSHTTPURLResponse *resp = nil;
    
    [_fetcher fetch3DayLocalForecastWithCompletion:^(NSHTTPURLResponse *response, NSError *error){
            forecast = [_fetcher lastForecast];
            self.didFinish = YES;
            if(nil == error)
                self.didFail = NO;
            else
                self.didFail = YES;
            resp = response;
            err = [error copy];
        }
    ];
    
    while(!self.didFinish && !self.didFail)
    {
        [[NSRunLoop currentRunLoop] runUntilDate:[NSDate dateWithTimeIntervalSinceNow:5]];
    }
        
    XCTAssertEqual([resp statusCode], 400, @"should have a 400 response (%d)", [resp statusCode]);
}

@end
