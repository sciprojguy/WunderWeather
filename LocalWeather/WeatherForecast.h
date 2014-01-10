//
//  SevenDayForecast.h
//  LocalWeather
//
//  Created by Chris Woodard on 7/20/13.
//  Copyright (c) 2013 Chris Woodard.. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WeatherForecastDay.h"

@interface WeatherForecast : NSObject

@property (nonatomic, strong) NSArray *forecastDays;

-(WeatherForecast *)initWithForecastArray:(NSArray *)simpleForecastArray;

-(NSInteger)numberOfDaysInForecast;
-(WeatherForecastDay *)forecastAtIndex:(NSInteger)anIndex;

@end
