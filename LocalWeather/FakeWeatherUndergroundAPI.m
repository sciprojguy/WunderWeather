//
//  FakeWeatherUndergroundAPI.m
//  LocalWeather
//
//  Created by Chris Woodard on 12/15/13.
//  Copyright (c) 2013 Cocoaheads. All rights reserved.
//

#import "WeatherFetcher.h"
#import "FakeWeatherUndergroundAPI.h"

#import "OHHTTPStubs.h"
#import "OHHTTPStubsResponse.h"
#import "OHHTTPStubsResponse+JSON.h"

@interface FakeWeatherUndergroundAPI ()
@property (nonatomic, strong) id<OHHTTPStubsDescriptor> descriptor;
@end

@implementation FakeWeatherUndergroundAPI

-(OHHTTPStubsResponse *)handleConditionsRequest:(NSURLRequest *)request
{
    OHHTTPStubsResponse *response = nil;
    NSData *jsonData = nil;
    if(YES != _sendNilWeather)
    {
        NSString *jsonResponsePath = [[NSBundle bundleForClass:[WeatherFetcher class]] pathForResource:@"FL_Tampa_Conditions" ofType:@"json"];
        jsonData = [NSData dataWithContentsOfFile:jsonResponsePath];
    }
    response = [OHHTTPStubsResponse responseWithData:jsonData statusCode:_httpStatusCode headers:nil];
    return response;
}

-(OHHTTPStubsResponse *)handleForecastRequest:(NSURLRequest *)request
{
    OHHTTPStubsResponse *response = nil;
    NSData *jsonData = nil;
    if(YES != _sendNilForecast)
    {
        NSString *jsonResponsePath = [[NSBundle bundleForClass:[WeatherFetcher class]] pathForResource:@"FL_Tampa_Forecast" ofType:@"json"];
        jsonData = [NSData dataWithContentsOfFile:jsonResponsePath];
    }
    response = [OHHTTPStubsResponse responseWithData:jsonData statusCode:_httpStatusCode headers:nil];
    return response;
}

-(void)initializeAPI
{
   self.descriptor = [OHHTTPStubs
        stubRequestsPassingTest:^(NSURLRequest *request){
            return YES;
        }
        
        withStubResponse:^OHHTTPStubsResponse *(NSURLRequest *request) {
       
        OHHTTPStubsResponse *response = nil;
        
        NSString *path = [[request URL] path];
        
        if([@"/api/b26094b9ad7417d9/conditions/q" isEqualToString:[path substringToIndex:34]])
        {
            response = [self handleConditionsRequest:request];
        }
        else
        if([@"/api/b26094b9ad7417d9/forecast/q" isEqualToString:[path substringToIndex:32]])
        {
            response = [self handleForecastRequest:request];
        }
        else
        {
            response = [OHHTTPStubsResponse responseWithData:[@"Not found" dataUsingEncoding:NSASCIIStringEncoding] statusCode:404 headers:nil];
        }
        
        return response;
    }];
}

+(FakeWeatherUndergroundAPI *)sharedFakeAPI
{
    static dispatch_once_t token = 0;
    static FakeWeatherUndergroundAPI *fakeAPI = nil;
    dispatch_once( &token, ^{
        fakeAPI = [[FakeWeatherUndergroundAPI alloc] init];
        [fakeAPI initializeAPI];
    });
    return fakeAPI;
}

@end
