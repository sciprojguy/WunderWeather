// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to CurrentLocalWeather.m instead.

#import "_CurrentLocalWeather.h"

const struct CurrentLocalWeatherAttributes CurrentLocalWeatherAttributes = {
	.airPressure = @"airPressure",
	.city = @"city",
	.country = @"country",
	.lat = @"lat",
	.lon = @"lon",
	.nowcastDate = @"nowcastDate",
	.rainInLast3Hours = @"rainInLast3Hours",
	.relativeHumidity = @"relativeHumidity",
	.state = @"state",
	.sunriseTime = @"sunriseTime",
	.sunsetTime = @"sunsetTime",
	.tempCurrent = @"tempCurrent",
	.tempMax = @"tempMax",
	.tempMin = @"tempMin",
	.updatedDate = @"updatedDate",
	.weatherDescr = @"weatherDescr",
	.weatherIcon = @"weatherIcon",
	.weatherId = @"weatherId",
	.weatherTitle = @"weatherTitle",
	.windDirection = @"windDirection",
	.windSpeed = @"windSpeed",
};

const struct CurrentLocalWeatherRelationships CurrentLocalWeatherRelationships = {
};

const struct CurrentLocalWeatherFetchedProperties CurrentLocalWeatherFetchedProperties = {
};

@implementation CurrentLocalWeatherID
@end

@implementation _CurrentLocalWeather

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"CurrentLocalWeather" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"CurrentLocalWeather";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"CurrentLocalWeather" inManagedObjectContext:moc_];
}

- (CurrentLocalWeatherID*)objectID {
	return (CurrentLocalWeatherID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"airPressureValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"airPressure"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"latValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"lat"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"lonValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"lon"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"rainInLast3HoursValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"rainInLast3Hours"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"relativeHumidityValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"relativeHumidity"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"tempCurrentValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"tempCurrent"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"tempMaxValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"tempMax"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"tempMinValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"tempMin"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"weatherIdValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"weatherId"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"windDirectionValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"windDirection"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"windSpeedValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"windSpeed"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic airPressure;



- (float)airPressureValue {
	NSNumber *result = [self airPressure];
	return [result floatValue];
}

- (void)setAirPressureValue:(float)value_ {
	[self setAirPressure:[NSNumber numberWithFloat:value_]];
}

- (float)primitiveAirPressureValue {
	NSNumber *result = [self primitiveAirPressure];
	return [result floatValue];
}

- (void)setPrimitiveAirPressureValue:(float)value_ {
	[self setPrimitiveAirPressure:[NSNumber numberWithFloat:value_]];
}





@dynamic city;






@dynamic country;






@dynamic lat;



- (double)latValue {
	NSNumber *result = [self lat];
	return [result doubleValue];
}

- (void)setLatValue:(double)value_ {
	[self setLat:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveLatValue {
	NSNumber *result = [self primitiveLat];
	return [result doubleValue];
}

- (void)setPrimitiveLatValue:(double)value_ {
	[self setPrimitiveLat:[NSNumber numberWithDouble:value_]];
}





@dynamic lon;



- (double)lonValue {
	NSNumber *result = [self lon];
	return [result doubleValue];
}

- (void)setLonValue:(double)value_ {
	[self setLon:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveLonValue {
	NSNumber *result = [self primitiveLon];
	return [result doubleValue];
}

- (void)setPrimitiveLonValue:(double)value_ {
	[self setPrimitiveLon:[NSNumber numberWithDouble:value_]];
}





@dynamic nowcastDate;






@dynamic rainInLast3Hours;



- (float)rainInLast3HoursValue {
	NSNumber *result = [self rainInLast3Hours];
	return [result floatValue];
}

- (void)setRainInLast3HoursValue:(float)value_ {
	[self setRainInLast3Hours:[NSNumber numberWithFloat:value_]];
}

- (float)primitiveRainInLast3HoursValue {
	NSNumber *result = [self primitiveRainInLast3Hours];
	return [result floatValue];
}

- (void)setPrimitiveRainInLast3HoursValue:(float)value_ {
	[self setPrimitiveRainInLast3Hours:[NSNumber numberWithFloat:value_]];
}





@dynamic relativeHumidity;



- (float)relativeHumidityValue {
	NSNumber *result = [self relativeHumidity];
	return [result floatValue];
}

- (void)setRelativeHumidityValue:(float)value_ {
	[self setRelativeHumidity:[NSNumber numberWithFloat:value_]];
}

- (float)primitiveRelativeHumidityValue {
	NSNumber *result = [self primitiveRelativeHumidity];
	return [result floatValue];
}

- (void)setPrimitiveRelativeHumidityValue:(float)value_ {
	[self setPrimitiveRelativeHumidity:[NSNumber numberWithFloat:value_]];
}





@dynamic state;






@dynamic sunriseTime;






@dynamic sunsetTime;






@dynamic tempCurrent;



- (float)tempCurrentValue {
	NSNumber *result = [self tempCurrent];
	return [result floatValue];
}

- (void)setTempCurrentValue:(float)value_ {
	[self setTempCurrent:[NSNumber numberWithFloat:value_]];
}

- (float)primitiveTempCurrentValue {
	NSNumber *result = [self primitiveTempCurrent];
	return [result floatValue];
}

- (void)setPrimitiveTempCurrentValue:(float)value_ {
	[self setPrimitiveTempCurrent:[NSNumber numberWithFloat:value_]];
}





@dynamic tempMax;



- (float)tempMaxValue {
	NSNumber *result = [self tempMax];
	return [result floatValue];
}

- (void)setTempMaxValue:(float)value_ {
	[self setTempMax:[NSNumber numberWithFloat:value_]];
}

- (float)primitiveTempMaxValue {
	NSNumber *result = [self primitiveTempMax];
	return [result floatValue];
}

- (void)setPrimitiveTempMaxValue:(float)value_ {
	[self setPrimitiveTempMax:[NSNumber numberWithFloat:value_]];
}





@dynamic tempMin;



- (float)tempMinValue {
	NSNumber *result = [self tempMin];
	return [result floatValue];
}

- (void)setTempMinValue:(float)value_ {
	[self setTempMin:[NSNumber numberWithFloat:value_]];
}

- (float)primitiveTempMinValue {
	NSNumber *result = [self primitiveTempMin];
	return [result floatValue];
}

- (void)setPrimitiveTempMinValue:(float)value_ {
	[self setPrimitiveTempMin:[NSNumber numberWithFloat:value_]];
}





@dynamic updatedDate;






@dynamic weatherDescr;






@dynamic weatherIcon;






@dynamic weatherId;



- (int32_t)weatherIdValue {
	NSNumber *result = [self weatherId];
	return [result intValue];
}

- (void)setWeatherIdValue:(int32_t)value_ {
	[self setWeatherId:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveWeatherIdValue {
	NSNumber *result = [self primitiveWeatherId];
	return [result intValue];
}

- (void)setPrimitiveWeatherIdValue:(int32_t)value_ {
	[self setPrimitiveWeatherId:[NSNumber numberWithInt:value_]];
}





@dynamic weatherTitle;






@dynamic windDirection;



- (float)windDirectionValue {
	NSNumber *result = [self windDirection];
	return [result floatValue];
}

- (void)setWindDirectionValue:(float)value_ {
	[self setWindDirection:[NSNumber numberWithFloat:value_]];
}

- (float)primitiveWindDirectionValue {
	NSNumber *result = [self primitiveWindDirection];
	return [result floatValue];
}

- (void)setPrimitiveWindDirectionValue:(float)value_ {
	[self setPrimitiveWindDirection:[NSNumber numberWithFloat:value_]];
}





@dynamic windSpeed;



- (float)windSpeedValue {
	NSNumber *result = [self windSpeed];
	return [result floatValue];
}

- (void)setWindSpeedValue:(float)value_ {
	[self setWindSpeed:[NSNumber numberWithFloat:value_]];
}

- (float)primitiveWindSpeedValue {
	NSNumber *result = [self primitiveWindSpeed];
	return [result floatValue];
}

- (void)setPrimitiveWindSpeedValue:(float)value_ {
	[self setPrimitiveWindSpeed:[NSNumber numberWithFloat:value_]];
}










@end
