//
//  SevenDayForecast.m
//  LocalWeather
//
//  Created by Chris Woodard on 7/20/13.
//  Copyright (c) 2013 Chris Woodard.. All rights reserved.
//

#import "WeatherForecast.h"

@interface WeatherForecast()

@property (nonatomic, strong) NSArray *forecastDays;

@end

@implementation WeatherForecast

-(WeatherForecast *)initWithForecastArray:(NSArray *)simpleForecastArray
{
    self = [super init];
    if(nil != self)
    {
        self.forecastDays = [[NSArray alloc] initWithArray:simpleForecastArray];
    }
    return self;
}

-(NSInteger)numberOfDaysInForecast
{
    return [_forecastDays count];
}

-(WeatherForecastDay *)forecastAtIndex:(NSInteger)anIndex
{
    return [[WeatherForecastDay alloc] initWithDictionary:_forecastDays[anIndex]];
}

-(void)dealloc
{
    _forecastDays = nil;
}

@end
