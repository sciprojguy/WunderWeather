//
//  ForecastTableCell.m
//  LocalWeather
//
//  Created by Chris Woodard on 8/8/13.
//  Copyright (c) 2013 Chris Woodard.. All rights reserved.
//

#import "ForecastTableCell.h"

@interface ForecastTableCell()

@property (nonatomic, strong) IBOutlet UILabel *weekdayLabel;
@property (nonatomic, strong) IBOutlet UILabel *lowTempLabel;
@property (nonatomic, strong) IBOutlet UILabel *highTempLabel;
@property (nonatomic, strong) IBOutlet UILabel *minHumidityLabel;
@property (nonatomic, strong) IBOutlet UILabel *maxHumidityLabel;
@property (nonatomic, strong) IBOutlet UILabel *conditionsLabel;

@end

@implementation ForecastTableCell

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

+(CGFloat)preferredHeight
{
    return 83;
}

-(void)setLabelsFromData:(WeatherForecastDay *)forecastDayData
{
    self.weekdayLabel.text = [forecastDayData weekday];
    self.conditionsLabel.text = [forecastDayData conditions];
    self.minHumidityLabel.text = [NSString stringWithFormat:@"%.1f%%",[forecastDayData minHumidity]];
    self.maxHumidityLabel.text = [NSString stringWithFormat:@"%.1f%%",[forecastDayData maxHumidity]];
    self.lowTempLabel.text = [NSString stringWithFormat:@"%.1f F",[forecastDayData lowTempInF]];
    self.highTempLabel.text = [NSString stringWithFormat:@"%.1f F",[forecastDayData highTempInF]];
}

@end
