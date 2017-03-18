#import "_CDDog.h"
#import <MagicalRecord/MagicalRecord.h>
@interface CDDog : _CDDog
+(id)insertDogWithName:(NSString *)name color:(NSString *)color location:(NSString *)location image:(NSString *)image contactInformation:(NSString *)contactInformation age:(int)age order:(NSInteger)order;
@end
