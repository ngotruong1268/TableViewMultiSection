//
//  DetailViewController.m
//  TableViewMultiSection
//
//  Created by Ngô Sỹ Trường on 5/10/16.
//  Copyright © 2016 ngotruong. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
{
    UILabel *title;
    UILabel *subtitle;
    UIImageView *images;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor brownColor];
    self.title = self.titleContents;
    title = [[UILabel alloc] initWithFrame:CGRectMake(50, 80, 100, 20)];
    subtitle = [[UILabel alloc] initWithFrame:CGRectMake(50, 100, 100, 20)];
    images = [[UIImageView alloc] initWithImage:[UIImage imageNamed:self.imageCounty]];
    images.frame = CGRectMake(50, 120, 200, 200);
    
    [title setText:self.titleContents];
    [subtitle setText:self.subtitleContents];
    
    
    [self.view addSubview:title];
    [self.view addSubview:subtitle];
    [self.view addSubview:images];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
