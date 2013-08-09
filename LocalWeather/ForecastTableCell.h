//
//  ForecastTableCell.h
//  LocalWeather
//
//  Created by Chris Woodard on 8/8/13.
//  Copyright (c) 2013 Chris Woodard.. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "WeatherForecastDay.h"

@interface ForecastTableCell : UITableViewCell

+(CGFloat)preferredHeight;

-(void)setLabelsFromData:(WeatherForecastDay *)forecastDayData;

@end
