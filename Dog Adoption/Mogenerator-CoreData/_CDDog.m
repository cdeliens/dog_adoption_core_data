// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to CDDog.m instead.

#import "_CDDog.h"

@implementation CDDogID
@end

@implementation _CDDog

+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"CDDog" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"CDDog";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"CDDog" inManagedObjectContext:moc_];
}

- (CDDogID*)objectID {
	return (CDDogID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"ageValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"age"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"orderValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"order"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic age;

- (int16_t)ageValue {
	NSNumber *result = [self age];
	return [result shortValue];
}

- (void)setAgeValue:(int16_t)value_ {
	[self setAge:@(value_)];
}

- (int16_t)primitiveAgeValue {
	NSNumber *result = [self primitiveAge];
	return [result shortValue];
}

- (void)setPrimitiveAgeValue:(int16_t)value_ {
	[self setPrimitiveAge:@(value_)];
}

@dynamic color;

@dynamic contactInformation;

@dynamic image;

@dynamic location;

@dynamic name;

@dynamic order;

- (int16_t)orderValue {
	NSNumber *result = [self order];
	return [result shortValue];
}

- (void)setOrderValue:(int16_t)value_ {
	[self setOrder:@(value_)];
}

- (int16_t)primitiveOrderValue {
	NSNumber *result = [self primitiveOrder];
	return [result shortValue];
}

- (void)setPrimitiveOrderValue:(int16_t)value_ {
	[self setPrimitiveOrder:@(value_)];
}

@end

@implementation CDDogAttributes 
+ (NSString *)age {
	return @"age";
}
+ (NSString *)color {
	return @"color";
}
+ (NSString *)contactInformation {
	return @"contactInformation";
}
+ (NSString *)image {
	return @"image";
}
+ (NSString *)location {
	return @"location";
}
+ (NSString *)name {
	return @"name";
}
+ (NSString *)order {
	return @"order";
}
@end

