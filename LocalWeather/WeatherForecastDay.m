//
//  WeatherForecastDay.m
//  LocalWeather
//
//  Created by Chris Woodard on 8/7/13.
//  Copyright (c) 2013 Chris Woodard.. All rights reserved.
//

#import "WeatherForecastDay.h"

@interface WeatherForecastDay()

@property (nonatomic, strong) NSDictionary *forecast;

@end

@implementation WeatherForecastDay

-(id)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    if(nil != self)
    {
        self.forecast = [[NSDictionary alloc] initWithDictionary:dict];
    }
    return self;
}

-(void)dealloc
{
    _forecast = nil;
}

/**
{
    "date":{
        "epoch":"1375930800",
        "pretty":"11:00 PM EDT on August 07, 2013",
        "day":7,
        "month":8,
        "year":2013,
        "yday":218,
        "hour":23,
        "min":"00",
        "sec":0,
        "isdst":"1",
        "monthname":"August",
        "weekday_short":"Wed",
        "weekday":"Wednesday",
        "ampm":"PM",
        "tz_short":"EDT",
        "tz_long":"America/New_York"
    },
    "period":1,
    "high": {
        "fahrenheit":"91",
        "celsius":"33"
    },
    "low": {
        "fahrenheit":"73",
        "celsius":"23"
    },
    "conditions":"Thunderstorm",
    "icon":"tstorms",
    "icon_url":"http://icons-ak.wxug.com/i/c/k/tstorms.gif",
    "skyicon":"partlycloudy",
    "pop":50,
    "qpf_allday": {
        "in": 0.20,
        "mm": 5.1
    },
    "qpf_day": {
        "in": 0.09,
        "mm": 2.3
    },
    "qpf_night": {
        "in": 0.11,
        "mm": 2.8
    },
    "snow_allday": {
        "in": 0,
        "cm": 0
    },
    "snow_day": {
        "in": 0,
        "cm": 0
    },
    "snow_night": {
        "in": 0,
        "cm": 0
    },
    "maxwind": {
        "mph": 6,
        "kph": 10,
        "dir": "NE",
        "degrees": 45
    },
    "avewind": {
        "mph": 5,
        "kph": 8,
        "dir": "East",
        "degrees": 97
    },
    "avehumidity": 76,
    "maxhumidity": 92,
    "minhumidity": 56
},
 **/

-(NSDate *)date
{
    NSDate *obsDate = [NSDate dateWithTimeIntervalSince1970:[_forecast[@"date"][@"epoch"] doubleValue]];
    return obsDate;
}

-(NSString *)weekday
{
    return _forecast[@"date"][@"weekday_short"];
}

-(float)lowTempInF
{
    return [_forecast[@"low"][@"fahrenheit"] floatValue];
}

-(float)highTempInF
{
    return [_forecast[@"high"][@"fahrenheit"] floatValue];
}

-(float)lowTempInC
{
    return [_forecast[@"low"][@"celsius"] floatValue];
}

-(float)highTempInC
{
    return [_forecast[@"high"][@"celsius"] floatValue];
}

-(NSString *)conditions
{
    return _forecast[@"conditions"];
}

-(float)avgWindSpeed
{
    return [_forecast[@"avewind"][@"mph"] floatValue];
}

-(float)avgWindDegrees
{
    return [_forecast[@"avewind"][@"degrees"] floatValue];
}

-(NSString *)avgWindDirection
{
    return _forecast[@"avewind"][@"dir"];
}

-(float)maxWindSpeed
{
    return [_forecast[@"maxwind"][@"mph"] floatValue];
}

-(float)maxWindDegrees
{
    return [_forecast[@"maxwind"][@"degrees"] floatValue];
}

-(NSString *)maxWindDirection
{
    return _forecast[@"maxwind"][@"dir"];
}

-(float)minHumidity
{
    return [_forecast[@"minhumidity"] floatValue];
}

-(float)maxHumidity
{
    return [_forecast[@"maxhumidity"] floatValue];
}

-(float)avgHumidity
{
    return [_forecast[@"avehumidity"] floatValue];
}

@end
