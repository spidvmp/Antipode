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
    
    //here comes the tricky part, calculate the antipodes.They must have about 5 or 6 million web pages that tell you how to calculate the antipodes. It's a very difficult job to decide which choose. Don`t worry, this is the operation
    //as the origin coordinates for the calculation we choose the coordinates of the center of the map. We use a variable of type CLLocationCoordinate2D
    
    //coordinate of the center of the map
    CLLocationCoordinate2D origin = self.mapView.centerCoordinate;
    
    CLLocationCoordinate2D antipode;
    if ( origin.longitude >= 0.0 )
        antipode.longitude = (-1.0)*(180.0 - fabsf(origin.longitude));
    else
        antipode.longitude=(180.0 - fabsf(origin.longitude));
    antipode.latitude = (-1.0) * origin.latitude;
    
    //and now, center map with new coordinates
    [self.mapView setCenterCoordinate:antipode animated:NO];
    
    
    
    

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
