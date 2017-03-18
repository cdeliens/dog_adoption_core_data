//
//  CoreDataManager.m
//  News
//
//  Created by Cesar Brenes on 3/11/17.
//  Copyright © 2017 Veux Labs. All rights reserved.
//

#import "CoreDataManager.h"
#import <MagicalRecord/MagicalRecord.h>
#import "CDdog.h"


@implementation CoreDataManager

+ (void)saveContext {
    [[NSManagedObjectContext MR_defaultContext] MR_saveToPersistentStoreWithCompletion:^(BOOL contextDidSave, NSError *error) {
        if (contextDidSave) {
            NSLog(@"You successfully saved your context.");
        } else if (error) {
            NSLog(@"Error saving context: %@", error.description);
        }
    }];
}


+(NSArray*)getAllDogs{
    NSArray *dogs = [CDDog MR_findAllSortedBy:@"order" ascending:YES];
    if (dogs.count>0) {
        return dogs;
    }
    return [CoreDataManager insertDogs];
}

+(NSArray*)insertDogs{
    [CDDog insertDogWithName:@"Rufus" color:@"black" location:@"Cartago" image:@"1dog.jpeg" contactInformation:@"Deliens" age:1 order:1];
    [CDDog insertDogWithName:@"Canelo" color:@"black" location:@"Cartago" image:@"2dog.jpg" contactInformation:@"Deliens" age:1 order:2];
    [CDDog insertDogWithName:@"Argus" color:@"black" location:@"Cartago" image:@"3dog.jpeg" contactInformation:@"Deliens" age:1 order:3];
    [CDDog insertDogWithName:@"Sparky" color:@"black" location:@"Cartago" image:@"4dog.jpeg" contactInformation:@"Deliens" age:1 order:4];
    [CDDog insertDogWithName:@"Chaco" color:@"black" location:@"Cartago" image:@"5dog.jpeg" contactInformation:@"Deliens" age:1 order:5];
    [CDDog insertDogWithName:@"Titi" color:@"black" location:@"Cartago" image:@"6dog.jpeg" contactInformation:@"Deliens" age:1 order:6];
    [CDDog insertDogWithName:@"Coco" color:@"black" location:@"Cartago" image:@"7dog.jpeg" contactInformation:@"Deliens" age:1 order:7];
    [CDDog insertDogWithName:@"Ramón" color:@"black" location:@"Cartago" image:@"8dog.jpeg" contactInformation:@"Deliens" age:1 order:8];
    [CDDog insertDogWithName:@"Pepe" color:@"black" location:@"Cartago" image:@"9dog.jpeg" contactInformation:@"Deliens" age:1 order:9];
    [CDDog insertDogWithName:@"Lupe" color:@"black" location:@"Cartago" image:@"10dog.jpg" contactInformation:@"Deliens" age:1 order:10];
    
    [CoreDataManager saveContext];
    return [CoreDataManager getAllDogs];
}

@end
