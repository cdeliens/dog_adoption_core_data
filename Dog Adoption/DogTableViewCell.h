//
//  DogTableViewCell.h
//  Dog Adoption
//
//  Created by Christian Deliens on 2/27/17.
//  Copyright © 2017 Christian Deliens. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CDDog;

@interface DogTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *dogImage;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;

-(void)setupCellWithDog:(CDDog *) dog;
@end
