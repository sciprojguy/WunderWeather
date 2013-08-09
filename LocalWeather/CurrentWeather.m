//
//  CurrentWeather.m
//  LocalWeather
//
//  Created by Chris Woodard on 7/14/13.
//  Copyright (c) 2013 Chris Woodard.. All rights reserved.
//

#import "CurrentWeather.h"

@interface CurrentWeather()

@property (nonatomic, strong) NSDictionary *currentWeather;
@property (nonatomic, strong) NSDateFormatter *formatter;

@end

@implementation CurrentWeather

-(CurrentWeather *)initWithDict:(NSDictionary *)weatherDict
{
    self = [super init];
    if(nil != self)
    {
        self.currentWeather = weatherDict;
        self.formatter = [[NSDateFormatter alloc] init];
    }
    return self;
}

-(void)dealloc
{
    if(nil != _formatter) _formatter = nil;
    if(nil != _currentWeather) _currentWeather = nil;
}

/***
    conversion and accessor/computation methods
 ***/

+(float)kelvinToCelsius:(float)degreesKelvin
{
    float convertedTemp;
    convertedTemp = degreesKelvin - 273.15;
    return convertedTemp;
}

+(float)kelvinToFahrenheit:(float)degreesKelvin
{
    float convertedTemp;
    convertedTemp = 9.0*(degreesKelvin - 273.15)/5.0 + 32.0;
    return convertedTemp;
}

-(float)currentTempForScale:(WeatherTempScale)scale
{
    float temperature;
    if(scale == TempScaleCelsius)
        temperature = [_currentWeather[@"current_observation"][@"temp_c"] floatValue];
    else
        temperature = [_currentWeather[@"current_observation"][@"temp_f"] floatValue];
    return temperature;
}

-(float)feelsLikeTempForScale:(WeatherTempScale)scale
{
    float temperature;
    if(scale == TempScaleCelsius)
        temperature = [_currentWeather[@"current_observation"][@"feelslike_c"] floatValue];
    else
        temperature = [_currentWeather[@"current_observation"][@"feelslike_f"] floatValue];
    return temperature;
}

-(float)mmHG
{
    float mmHG = [_currentWeather[@"current_observation"][@"pressure_mb"] floatValue];
    return mmHG;
}

-(NSString *)relativeHumidity
{
    return _currentWeather[@"current_observation"][@"relative_humidity"];
}

-(float)rainfall3hrs
{
    return [_currentWeather[@"current_observation"][@"3h"] floatValue];
}

-(float)cloudiness
{
    return [_currentWeather[@"current_observation"][@"all"] floatValue];
}

-(NSString *)weatherDescription
{
    NSDictionary *weatherNode = _currentWeather[@"weather"][0];
    return weatherNode[@"description"];
}

-(float)windSpeed
{
    float milesPerHour = [_currentWeather[@"current_observation"][@"wind_mph"] floatValue];
    return milesPerHour;
}

-(float)windGust
{
    float milesPerHour = [_currentWeather[@"current_observation"][@"wind_gust_mph"] floatValue];
    return milesPerHour;
}

-(float)windHeading
{
    return [_currentWeather[@"current_observation"][@"wind_degrees"] floatValue];
}

-(NSString *)windHeadingString
{
    return _currentWeather[@"current_observation"][@"wind_dir"];
}

-(NSString *)localeName
{
    return _currentWeather[@"name"];
}

-(NSString *)lastUpdatedDateTime
{
    [_formatter setTimeStyle:NSDateFormatterShortStyle];
    [_formatter setDateStyle:NSDateFormatterMediumStyle];
    
    NSDate *lastUpdateDate = [NSDate dateWithTimeIntervalSince1970:[_currentWeather[@"current_observation"][@"observationeppoch"] doubleValue]];
    
    NSString *updateDateTime = [_formatter stringFromDate:lastUpdateDate];
    return updateDateTime;
}


@end
