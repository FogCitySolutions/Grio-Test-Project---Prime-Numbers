//
//  GRViewController.h
//  Grio Test Project
//
//  Created by Fog City Solutions on 7/3/13.
//  Copyright (c) 2013 GR. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GR-PrimeNumbers.h"

@interface GRViewController : UIViewController

@property (nonatomic, strong) NSMutableArray *numbersTable;
@property (nonatomic, strong) NSMutableArray *rows;
@property (nonatomic, strong) GR_PrimeNumbers *findPrimeNumbers;

@end
