//
//  Dog.h
//  Dog Adoption
//
//  Created by Christian Deliens on 2/27/17.
//  Copyright © 2017 Christian Deliens. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dog : NSObject

@property (readonly) NSString *name;
@property (readonly) NSString *color;
@property (readonly) NSString *image;
@property (readonly) NSString *location;
@property (readonly) NSString *contactInformation;
@property (readonly) int age;

-(id) initWithName:(NSString *)name color:(NSString *)color location:(NSString *)location image:(NSString *)image contactInformation:(NSString *)contactInformation age:(int)age;

@end

