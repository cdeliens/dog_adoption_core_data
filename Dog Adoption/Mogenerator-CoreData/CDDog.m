#import "CDDog.h"

@interface CDDog ()

// Private interface goes here.

@end

@implementation CDDog

+(id)insertDogWithName:(NSString *)name color:(NSString *)color location:(NSString *)location image:(NSString *)image contactInformation:(NSString *)contactInformation age:(int)age order:(NSInteger)order
{
    
    CDDog *dog = [CDDog MR_createEntity];
    dog.name = name;
    dog.color = color;
    dog.age = [NSNumber numberWithInt:age];
    dog.location = location;
    dog.contactInformation = contactInformation;
    dog.image = image;
    dog.orderValue = order;
    return dog;
}

@end
