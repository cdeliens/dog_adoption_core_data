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
#import "CoreDataManager.h"
#import "CDDog.h"

@interface DogsViewController () <UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSArray *dogsArray;
@end

@implementation DogsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerCustomCellWithName:[DogTableViewCell getClassName]];
    self.dogsArray = [CoreDataManager getAllDogs];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dogsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    DogTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[DogTableViewCell getClassName]];
    [cell setupCellWithDog:[self.dogsArray objectAtIndex:indexPath.row]];
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    DogDetailTableViewController *DogDetailTableViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"DogDetailTableViewController"];
    
    CDDog *dogSelected = self.dogsArray[indexPath.row];
    DogDetailTableViewController.dogSelected = dogSelected;
    
    [self.navigationController pushViewController:DogDetailTableViewController animated:true];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 200;
}
@end
