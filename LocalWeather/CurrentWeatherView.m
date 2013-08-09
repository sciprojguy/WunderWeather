//
//  CurrentWeatherView.m
//  LocalWeather
//
//  Created by Chris Woodard on 7/11/13.
//  Copyright (c) 2013 Chris Woodard.. All rights reserved.
//

#import "CurrentWeatherView.h"
#import "CurrentWeather.h"
#import "WeatherForecast.h"
#import "WeatherFetcher.h"

@implementation CurrentWeatherView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)setLabelsFromModel:(CurrentWeather *)currentWeather
{
    _airPressureLabel.text = [NSString stringWithFormat:@"%.1f", [currentWeather mmHG]];
    _feelsLikeTempLabel.text = [NSString stringWithFormat:@"%.1f", [currentWeather currentTempForScale:TempScaleFahrenheit]];
    _currentTempLabel.text = [NSString stringWithFormat:@"%.1f", [currentWeather currentTempForScale:TempScaleFahrenheit]];
    _relativeHumidityLabel.text = [currentWeather relativeHumidity];
    _currentWeatherLabel.text = [currentWeather weatherDescription];
    _cloudinessLabel.text = [NSString stringWithFormat:@"%.1f%%", [currentWeather cloudiness]];
    _windDirectionLabel.text = [currentWeather windHeadingString];
    _windSpeedLabel.text = [NSString stringWithFormat:@"%.1f", [currentWeather windSpeed]];
    _cityStateCountryLabel.text = [currentWeather localeName];
    _lastUpdatedLabel.text = [NSString stringWithFormat:@"Last updated: %@", [currentWeather lastUpdatedDateTime]];
    _windGustLabel.text = [NSString stringWithFormat:@"%.1f",[currentWeather windGust]];
}

@end
