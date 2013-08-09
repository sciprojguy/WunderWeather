//
//  CurrentWeatherView.h
//  LocalWeather
//
//  Created by Chris Woodard on 7/11/13.
//  Copyright (c) 2013 Chris Woodard.. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "CurrentWeather.h"

@interface CurrentWeatherView : UIView

@property (nonatomic, weak) IBOutlet UILabel *cityStateCountryLabel;
@property (nonatomic, weak) IBOutlet UILabel *feelsLikeTempLabel;
@property (nonatomic, weak) IBOutlet UILabel *currentTempLabel;
@property (nonatomic, weak) IBOutlet UILabel *currentWeatherLabel;
@property (nonatomic, weak) IBOutlet UILabel *relativeHumidityLabel;
@property (nonatomic, weak) IBOutlet UILabel *airPressureLabel;
@property (nonatomic, weak) IBOutlet UILabel *sunriseLabel;
@property (nonatomic, weak) IBOutlet UILabel *sunsetLabel;
@property (nonatomic, weak) IBOutlet UILabel *windSpeedLabel;
@property (nonatomic, weak) IBOutlet UILabel *windDirectionLabel;
@property (nonatomic, weak) IBOutlet UILabel *windGustLabel;
@property (nonatomic, weak) IBOutlet UILabel *cloudinessLabel;
@property (nonatomic, weak) IBOutlet UILabel *lastUpdatedLabel;

-(void)setLabelsFromModel:(CurrentWeather *)currentWeather;

@end
