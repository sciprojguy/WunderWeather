//
//  WeatherForecastDay.h
//  LocalWeather
//
//  Created by Chris Woodard on 8/7/13.
//  Copyright (c) 2013 Chris Woodard.. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeatherForecastDay : NSObject

-(id)initWithDictionary:(NSDictionary *)dict;

-(NSDate *)date;
-(NSString *)weekday;
-(float)lowTempInF;
-(float)highTempInF;
-(float)lowTempInC;
-(float)highTempInC;
-(NSString *)conditions;
-(float)avgWindSpeed;
-(float)avgWindDegrees;
-(NSString *)avgWindDirection;
-(float)maxWindSpeed;
-(float)maxWindDegrees;
-(NSString *)maxWindDirection;
-(float)minHumidity;
-(float)maxHumidity;
-(float)avgHumidity;

@end
