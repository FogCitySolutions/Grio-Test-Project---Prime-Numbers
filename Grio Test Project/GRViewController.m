//
//  GRViewController.m
//  Grio Test Project
//
//  Created by Fog City Solutions on 7/3/13.
//  Copyright (c) 2013 GR. All rights reserved.
//

#import "GRViewController.h"

@interface GRViewController ()

@end

@implementation GRViewController

-(GR_PrimeNumbers *)findPrimeNumbers
{
	if (! _findPrimeNumbers ) _findPrimeNumbers = [[GR_PrimeNumbers alloc]init];
    return _findPrimeNumbers  ;
}



- (void)viewDidLoad
{
    [super viewDidLoad];
	// @"52038 30594 31345 97912 85023"
	[self.findPrimeNumbers initFromNumberString:@"5203830594313459791285023"];
	[self.findPrimeNumbers checkForPrimes];
}





@end
