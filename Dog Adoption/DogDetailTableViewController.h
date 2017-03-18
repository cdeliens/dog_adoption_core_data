//
//  DogDetailTableViewController.h
//  Dog Adoption
//
//  Created by Christian Deliens on 2/27/17.
//  Copyright © 2017 Christian Deliens. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CDDog;

@interface DogDetailTableViewController : UITableViewController
@property (nonatomic, strong) CDDog *dogSelected;

@end
