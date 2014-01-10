//
//  WeatherFetcher.m
//  LocalWeather
//
//  Created by Chris Woodard on 7/4/13.
//  Copyright (c) 2013 Chris Woodard.. All rights reserved.
//

/**
when you sign up for the Weather Underground API you'll get a token you can include in the URL
 **/

const NSString *weatherBaseURL = @"http://api.wunderground.com/api/b26094b9ad7417d9";
const NSString *weather3DayForecastURL = @"http://api.wunderground.com/api/b26094b9ad7417d9/forecast/";

#import "WeatherFetcher.h"

@interface WeatherFetcher ()

@property (nonatomic, strong) NSDictionary *currentWeatherDict;
@property (nonatomic, strong) NSDictionary *forecast3DaysDict;
@property (nonatomic, strong) NSMutableData *fetchedData;
@property (nonatomic, strong) NSHTTPURLResponse *response;
@property (nonatomic, assign) BOOL isDone;
@property (nonatomic, assign) BOOL didFail;
@property (atomic, strong) NSError *lastError;

@property (nonatomic, strong) NSOperationQueue *opQueue;

@end

@implementation WeatherFetcher

/***
    singleton initializer
 ***/

+(WeatherFetcher *)defaultFetcher
{
    static WeatherFetcher *fetcher = nil;
    static dispatch_once_t token = 0;
    dispatch_once( &token, ^{
        fetcher = [[WeatherFetcher alloc] init];
        fetcher.opQueue = [[NSOperationQueue alloc] init];
        fetcher.opQueue.maxConcurrentOperationCount = 1;
    });
    return fetcher;
}

-(void)fetchCurrentLocalWeatherWithCompletion:(CompletionBlock)completion
{
    [self.opQueue addOperationWithBlock:^{
        NSURL *weatherURL = [NSURL URLWithString:[NSString stringWithFormat:@"%@/conditions/q/%@.json", weatherBaseURL, @"FL/Tampa"]];
        NSMutableURLRequest *weatherFetchReq = [[NSMutableURLRequest alloc] initWithURL:weatherURL];
        weatherFetchReq.HTTPMethod = @"GET";

        NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:weatherFetchReq delegate:self startImmediately:YES];
        
        self.isDone = NO;
        self.didFail = NO;
        
        while(!self.isDone)
        {
            [[NSRunLoop currentRunLoop] runMode:NSDefaultRunLoopMode beforeDate:[NSDate distantFuture]];
        }

        if(NO == self.didFail)
        {
            NSError *error = nil;
            NSDictionary *dataDict = [NSJSONSerialization JSONObjectWithData:self.fetchedData options:kNilOptions error:&error];
            self.currentWeatherDict = [[NSDictionary alloc] initWithDictionary:dataDict];
           if(nil != completion)
            {
                completion(self.response, error);
            }
        }
        else
        {
            if(nil != completion)
            {
                completion( self.response, self.lastError);
            }
        }
        
        connection = nil;
    }];
}

-(void)fetch3DayLocalForecastWithCompletion:(CompletionBlock)completion
{
    [self.opQueue addOperationWithBlock:^{
       NSURL *weatherURL = [NSURL URLWithString:[NSString stringWithFormat:@"%@/forecast/q/%@.json", weatherBaseURL, @"FL/Tampa"]];
        NSMutableURLRequest *weatherFetchReq = [[NSMutableURLRequest alloc] initWithURL:weatherURL];
        weatherFetchReq.HTTPMethod = @"GET";

        NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:weatherFetchReq delegate:self startImmediately:YES];
        
        self.isDone = NO;
        self.didFail = NO;
        
        while(!self.isDone)
        {
            [[NSRunLoop currentRunLoop] runMode:NSDefaultRunLoopMode beforeDate:[NSDate distantFuture]];
        }
        
        if(NO == self.didFail)
        {
            NSError *error = nil;
            NSDictionary *dataDict = [NSJSONSerialization JSONObjectWithData:self.fetchedData options:kNilOptions error:&error];
            self.forecast3DaysDict = [[NSDictionary alloc] initWithDictionary:dataDict[@"forecast"][@"simpleforecast"]];
            if(nil != completion)
            {
                completion(self.response, error);
            }
        }
        else
        {
            if(nil != completion)
            {
                completion( self.response, self.lastError);
            }
        }
        
        connection = nil;
    }];
}

// factory method #1 - current weather

-(CurrentWeather *)currentWeather
{
    CurrentWeather *cw = [[CurrentWeather alloc] initWithDict:_currentWeatherDict];
    return cw;
}

// factory method #2 - 3 day forecast

-(WeatherForecast *)lastForecast
{
    WeatherForecast *wf = [[WeatherForecast alloc] initWithForecastArray:_forecast3DaysDict[@"forecastday"]];
    return wf;
}

#pragma mark - NSURLConnectionDelegate methods

-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSHTTPURLResponse *)response
{
    self.fetchedData = [[NSMutableData alloc] initWithCapacity:0];
    self.response = (NSHTTPURLResponse *)response;
}

-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    [self.fetchedData appendData:data];
}

-(void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    self.isDone = YES;
    self.didFail = NO;
}

-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    self.isDone = YES;
    self.didFail = YES;
    self.lastError = error;
}

@end
