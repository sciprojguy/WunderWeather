//
//  FakeWeatherUndergroundAPI.h
//  LocalWeather
//
//  Created by Chris Woodard on 12/15/13.
//  Copyright (c) 2013 Cocoaheads. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FakeWeatherUndergroundAPI : NSObject

/**

 **/

@property (nonatomic, assign) NSInteger httpStatusCode;
@property (nonatomic, assign) BOOL sendNilWeather;
@property (nonatomic, assign) BOOL sendNilForecast;

+(FakeWeatherUndergroundAPI *)sharedFakeAPI;

@end
