//
//  DogDetailTableViewController.h
//  Dog Adoption
//
//  Created by Christian Deliens on 2/27/17.
//  Copyright © 2017 Christian Deliens. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Dog;

@interface DogDetailTableViewController : UITableViewController
@property (nonatomic, strong) Dog *dogSelected;

@end
