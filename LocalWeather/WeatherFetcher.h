//
//  WeatherFetcher.h
//  LocalWeather
//
//  Created by Chris Woodard on 7/4/13.
//  Copyright (c) 2013 Chris Woodard.. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CurrentWeather.h"
#import "WeatherForecast.h"

typedef void (^CompletionBlock)(NSHTTPURLResponse *response, NSError *err);

@interface WeatherFetcher : NSObject <NSURLConnectionDataDelegate, NSURLConnectionDelegate>

+(WeatherFetcher *)defaultFetcher;

-(void)fetchCurrentLocalWeatherWithCompletion:(CompletionBlock)completion;
-(void)fetch3DayLocalForecastWithCompletion:(CompletionBlock)completion;

-(CurrentWeather *)currentWeather;
-(WeatherForecast *)lastForecast;

@end
