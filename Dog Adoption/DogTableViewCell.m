//
//  DogTableViewCell.m
//  Dog Adoption
//
//  Created by Christian Deliens on 2/27/17.
//  Copyright © 2017 Christian Deliens. All rights reserved.
//

#import "DogTableViewCell.h"
#import "Dog.h"

@implementation DogTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setupCellWithDog:(Dog *) dog
{
    self.nameLabel.text = dog.name;
    self.dogImage.image = [UIImage imageNamed:dog.image];
}
@end
