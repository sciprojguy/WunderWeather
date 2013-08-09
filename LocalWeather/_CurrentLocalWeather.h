// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to CurrentLocalWeather.h instead.

#import <CoreData/CoreData.h>


extern const struct CurrentLocalWeatherAttributes {
	__unsafe_unretained NSString *airPressure;
	__unsafe_unretained NSString *city;
	__unsafe_unretained NSString *country;
	__unsafe_unretained NSString *lat;
	__unsafe_unretained NSString *lon;
	__unsafe_unretained NSString *nowcastDate;
	__unsafe_unretained NSString *rainInLast3Hours;
	__unsafe_unretained NSString *relativeHumidity;
	__unsafe_unretained NSString *state;
	__unsafe_unretained NSString *sunriseTime;
	__unsafe_unretained NSString *sunsetTime;
	__unsafe_unretained NSString *tempCurrent;
	__unsafe_unretained NSString *tempMax;
	__unsafe_unretained NSString *tempMin;
	__unsafe_unretained NSString *updatedDate;
	__unsafe_unretained NSString *weatherDescr;
	__unsafe_unretained NSString *weatherIcon;
	__unsafe_unretained NSString *weatherId;
	__unsafe_unretained NSString *weatherTitle;
	__unsafe_unretained NSString *windDirection;
	__unsafe_unretained NSString *windSpeed;
} CurrentLocalWeatherAttributes;

extern const struct CurrentLocalWeatherRelationships {
} CurrentLocalWeatherRelationships;

extern const struct CurrentLocalWeatherFetchedProperties {
} CurrentLocalWeatherFetchedProperties;
























@interface CurrentLocalWeatherID : NSManagedObjectID {}
@end

@interface _CurrentLocalWeather : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (CurrentLocalWeatherID*)objectID;





@property (nonatomic, strong) NSNumber* airPressure;



@property float airPressureValue;
- (float)airPressureValue;
- (void)setAirPressureValue:(float)value_;

//- (BOOL)validateAirPressure:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* city;



//- (BOOL)validateCity:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* country;



//- (BOOL)validateCountry:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* lat;



@property double latValue;
- (double)latValue;
- (void)setLatValue:(double)value_;

//- (BOOL)validateLat:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* lon;



@property double lonValue;
- (double)lonValue;
- (void)setLonValue:(double)value_;

//- (BOOL)validateLon:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSDate* nowcastDate;



//- (BOOL)validateNowcastDate:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* rainInLast3Hours;



@property float rainInLast3HoursValue;
- (float)rainInLast3HoursValue;
- (void)setRainInLast3HoursValue:(float)value_;

//- (BOOL)validateRainInLast3Hours:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* relativeHumidity;



@property float relativeHumidityValue;
- (float)relativeHumidityValue;
- (void)setRelativeHumidityValue:(float)value_;

//- (BOOL)validateRelativeHumidity:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* state;



//- (BOOL)validateState:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSDate* sunriseTime;



//- (BOOL)validateSunriseTime:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSDate* sunsetTime;



//- (BOOL)validateSunsetTime:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* tempCurrent;



@property float tempCurrentValue;
- (float)tempCurrentValue;
- (void)setTempCurrentValue:(float)value_;

//- (BOOL)validateTempCurrent:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* tempMax;



@property float tempMaxValue;
- (float)tempMaxValue;
- (void)setTempMaxValue:(float)value_;

//- (BOOL)validateTempMax:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* tempMin;



@property float tempMinValue;
- (float)tempMinValue;
- (void)setTempMinValue:(float)value_;

//- (BOOL)validateTempMin:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSDate* updatedDate;



//- (BOOL)validateUpdatedDate:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* weatherDescr;



//- (BOOL)validateWeatherDescr:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* weatherIcon;



//- (BOOL)validateWeatherIcon:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* weatherId;



@property int32_t weatherIdValue;
- (int32_t)weatherIdValue;
- (void)setWeatherIdValue:(int32_t)value_;

//- (BOOL)validateWeatherId:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* weatherTitle;



//- (BOOL)validateWeatherTitle:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* windDirection;



@property float windDirectionValue;
- (float)windDirectionValue;
- (void)setWindDirectionValue:(float)value_;

//- (BOOL)validateWindDirection:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* windSpeed;



@property float windSpeedValue;
- (float)windSpeedValue;
- (void)setWindSpeedValue:(float)value_;

//- (BOOL)validateWindSpeed:(id*)value_ error:(NSError**)error_;






@end

@interface _CurrentLocalWeather (CoreDataGeneratedAccessors)

@end

@interface _CurrentLocalWeather (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveAirPressure;
- (void)setPrimitiveAirPressure:(NSNumber*)value;

- (float)primitiveAirPressureValue;
- (void)setPrimitiveAirPressureValue:(float)value_;




- (NSString*)primitiveCity;
- (void)setPrimitiveCity:(NSString*)value;




- (NSString*)primitiveCountry;
- (void)setPrimitiveCountry:(NSString*)value;




- (NSNumber*)primitiveLat;
- (void)setPrimitiveLat:(NSNumber*)value;

- (double)primitiveLatValue;
- (void)setPrimitiveLatValue:(double)value_;




- (NSNumber*)primitiveLon;
- (void)setPrimitiveLon:(NSNumber*)value;

- (double)primitiveLonValue;
- (void)setPrimitiveLonValue:(double)value_;




- (NSDate*)primitiveNowcastDate;
- (void)setPrimitiveNowcastDate:(NSDate*)value;




- (NSNumber*)primitiveRainInLast3Hours;
- (void)setPrimitiveRainInLast3Hours:(NSNumber*)value;

- (float)primitiveRainInLast3HoursValue;
- (void)setPrimitiveRainInLast3HoursValue:(float)value_;




- (NSNumber*)primitiveRelativeHumidity;
- (void)setPrimitiveRelativeHumidity:(NSNumber*)value;

- (float)primitiveRelativeHumidityValue;
- (void)setPrimitiveRelativeHumidityValue:(float)value_;




- (NSString*)primitiveState;
- (void)setPrimitiveState:(NSString*)value;




- (NSDate*)primitiveSunriseTime;
- (void)setPrimitiveSunriseTime:(NSDate*)value;




- (NSDate*)primitiveSunsetTime;
- (void)setPrimitiveSunsetTime:(NSDate*)value;




- (NSNumber*)primitiveTempCurrent;
- (void)setPrimitiveTempCurrent:(NSNumber*)value;

- (float)primitiveTempCurrentValue;
- (void)setPrimitiveTempCurrentValue:(float)value_;




- (NSNumber*)primitiveTempMax;
- (void)setPrimitiveTempMax:(NSNumber*)value;

- (float)primitiveTempMaxValue;
- (void)setPrimitiveTempMaxValue:(float)value_;




- (NSNumber*)primitiveTempMin;
- (void)setPrimitiveTempMin:(NSNumber*)value;

- (float)primitiveTempMinValue;
- (void)setPrimitiveTempMinValue:(float)value_;




- (NSDate*)primitiveUpdatedDate;
- (void)setPrimitiveUpdatedDate:(NSDate*)value;




- (NSString*)primitiveWeatherDescr;
- (void)setPrimitiveWeatherDescr:(NSString*)value;




- (NSString*)primitiveWeatherIcon;
- (void)setPrimitiveWeatherIcon:(NSString*)value;




- (NSNumber*)primitiveWeatherId;
- (void)setPrimitiveWeatherId:(NSNumber*)value;

- (int32_t)primitiveWeatherIdValue;
- (void)setPrimitiveWeatherIdValue:(int32_t)value_;




- (NSString*)primitiveWeatherTitle;
- (void)setPrimitiveWeatherTitle:(NSString*)value;




- (NSNumber*)primitiveWindDirection;
- (void)setPrimitiveWindDirection:(NSNumber*)value;

- (float)primitiveWindDirectionValue;
- (void)setPrimitiveWindDirectionValue:(float)value_;




- (NSNumber*)primitiveWindSpeed;
- (void)setPrimitiveWindSpeed:(NSNumber*)value;

- (float)primitiveWindSpeedValue;
- (void)setPrimitiveWindSpeedValue:(float)value_;




@end
