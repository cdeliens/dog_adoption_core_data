//
//  Dog.m
//  Dog Adoption
//
//  Created by Christian Deliens on 2/27/17.
//  Copyright © 2017 Christian Deliens. All rights reserved.
//

#import "Dog.h"

@interface Dog()

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *color;
@property (strong, nonatomic) NSString *image;
@property (strong, nonatomic) NSString *location;
@property (strong, nonatomic) NSString *contactInformation;
@property (nonatomic) int age;

@end

@implementation Dog

-(id) initWithName:(NSString *)name color:(NSString *)color location:(NSString *)location image:(NSString *)image contactInformation:(NSString *)contactInformation age:(int)age
{
    if (self = [super init]) {
        _name = name;
        _color = color;
        _image = image;
        _contactInformation = contactInformation;
        _age = age;
        _location = location;
    }
    return self;
}

@end
