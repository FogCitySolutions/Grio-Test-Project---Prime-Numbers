//
//  GRtest.m
//  Grio Test Project
//
//  Created by Fog City Solutions on 7/5/13.
//  Copyright (c) 2013 GR. All rights reserved.
//

#import "GRtest.h"

@implementation GRtest


-(void)testMethod: (int) x
{
	x++;
	if (x < 10)
		[self testMethod:x];
}

@end
