//
//  NCTViewController.m
//  Antipode_Example
//
//  Created by Vicente de Miguel on 25/3/15.
//  Copyright (c) 2015 Nicatec Software. All rights reserved.
//

#import "NCTViewController.h"


@interface NCTViewController ()

@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end

@implementation NCTViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //Create title
    self.title=@"Antipode";
    
    //create button to calculate antipode. When touch exec antipodeCalculator
    UIBarButtonItem *antipodeButton = [[UIBarButtonItem alloc] initWithTitle:@"Antipode" style:UIBarButtonItemStylePlain target:self action:@selector(antipodeCalculator)];
    self.navigationItem.rightBarButtonItem=antipodeButton;
    
}

#pragma mark - Antipode Calculator
-(void)antipodeCalculator{
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - MKMapkitDelegate
-(void)mapViewDidFailLoadingMap:(MKMapView *)mapView withError:(NSError *)error {
    
    NSLog(@"Error loading map");
}
@end
