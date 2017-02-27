//
//  DogsViewController.m
//  Dog Adoption
//
//  Created by Christian Deliens on 2/27/17.
//  Copyright © 2017 Christian Deliens. All rights reserved.
//

#import "DogsViewController.h"
#import "UITableView+RegisterCustomCell.h"
#import "UITableViewCell+GetClassName.h"
#import "DogTableViewCell.h"
#import "DogDetailTableViewController.h"
#import "Dog.h"

@interface DogsViewController () <UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *dogsArray;
@end

@implementation DogsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerCustomCellWithName:[DogTableViewCell getClassName]];
    [self initDogsArray];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dogsArray.count;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    DogTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[DogTableViewCell getClassName]];
    [cell setupCellWithDog:[self.dogsArray objectAtIndex:indexPath.row]];
    return cell;
}

- (void)initDogsArray
{
    Dog *dogOne = [[Dog alloc] initWithName:@"Rufus" color:@"black" location:@"Cartago" image:@"1dog.jpeg" contactInformation:@"Deliens" age:1];
    Dog *dogTwo = [[Dog alloc] initWithName:@"Canelo" color:@"black" location:@"Cartago" image:@"2dog.jpg" contactInformation:@"Deliens" age:1];
    Dog *dogThree = [[Dog alloc] initWithName:@"Argus" color:@"black" location:@"Cartago" image:@"3dog.jpeg" contactInformation:@"Deliens" age:1];
    Dog *dogFour = [[Dog alloc] initWithName:@"Sparky" color:@"black" location:@"Cartago" image:@"4dog.jpeg" contactInformation:@"Deliens" age:1];
    Dog *dogFive = [[Dog alloc] initWithName:@"Chaco" color:@"black" location:@"Cartago" image:@"5dog.jpeg" contactInformation:@"Deliens" age:1];
    Dog *dogSix = [[Dog alloc] initWithName:@"Titi" color:@"black" location:@"Cartago" image:@"6dog.jpeg" contactInformation:@"Deliens" age:1];
    Dog *dogSeven = [[Dog alloc] initWithName:@"Coco" color:@"black" location:@"Cartago" image:@"7dog.jpeg" contactInformation:@"Deliens" age:1];
    Dog *dogEith = [[Dog alloc] initWithName:@"Ramón" color:@"black" location:@"Cartago" image:@"8dog.jpeg" contactInformation:@"Deliens" age:1];
    Dog *dogNine = [[Dog alloc] initWithName:@"Pepe" color:@"black" location:@"Cartago" image:@"9dog.jpeg" contactInformation:@"Deliens" age:1];
    Dog *dogTen = [[Dog alloc] initWithName:@"Lupe" color:@"black" location:@"Cartago" image:@"10dog.jpg" contactInformation:@"Deliens" age:1];
    
    self.dogsArray = [[NSMutableArray alloc] initWithObjects:dogOne, dogTwo, dogThree, dogFour, dogFive, dogSix, dogSeven, dogEith, dogNine, dogTen, nil];
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    DogDetailTableViewController *DogDetailTableViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"DogDetailTableViewController"];
    
    Dog *dogSelected = self.dogsArray[indexPath.row];
    DogDetailTableViewController.dogSelected = dogSelected;
    
    [self.navigationController pushViewController:DogDetailTableViewController animated:true];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 200;
}
@end
