//
//  TableViewMultiSection.m
//  TableViewMultiSection
//
//  Created by Ngô Sỹ Trường on 5/9/16.
//  Copyright © 2016 ngotruong. All rights reserved.
//

#import "TableViewMultiSection.h"
#import "WorldData.h"
#import "Country.h"
#import "Continent.h"
#import "DetailViewController.h"

@interface TableViewMultiSection ()

@end

@implementation TableViewMultiSection
{
    NSArray *arrayContinent;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    arrayContinent = [[WorldData shareData] arrayContinent ];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return arrayContinent.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    Continent *continent = arrayContinent[section];
    return continent.arrayCountries.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    Continent *continent = arrayContinent[indexPath.section];
    Country *country = continent.arrayCountries[indexPath.row];
    
    cell.textLabel.text = country.name;
    cell.detailTextLabel.text = country.capitalCity;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.imageView.image = [UIImage imageNamed:country.name];
    
    CGSize itemSize = CGSizeMake(100, 58);
    UIGraphicsBeginImageContext(itemSize);
    CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
    [cell.imageView.image drawInRect:imageRect];
    cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return cell;
}

-(NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    Continent *continent = arrayContinent[section];
    return continent.name;
}

-(void) tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section {
    view.tintColor = [UIColor brownColor];
    
    UITableViewHeaderFooterView *header = (UITableViewHeaderFooterView*)view;
    [header.textLabel setTextColor:[UIColor whiteColor]];
}


-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Continent *continent = arrayContinent[indexPath.section];
    Country *country = continent.arrayCountries[indexPath.row];
    
    DetailViewController *detail = [[DetailViewController alloc] init ];
    detail.titleContents = country.name;
    detail.subtitleContents = country.capitalCity;
    detail.imageCounty = country.name;
    [self.navigationController pushViewController:detail animated:true];
    
    NSLog(@"%@ - %@",country.name,country.capitalCity);
   
    
}

@end
