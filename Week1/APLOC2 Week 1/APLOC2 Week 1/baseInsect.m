//
//  baseInsect.m
//  APLOC2 Week 1
//
//  Created by Brent Marohnic on 2/11/13.
//  Copyright (c) 2013 Brent Marohnic. All rights reserved.
//

#import "baseInsect.h"

@implementation baseInsect

// allow the compiler to automatically generate get and set methods for the insect properties
@synthesize numberOfLegs, numberOfWings, insectName, annoyanceFactor;

// initialize the base insect
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setNumberOfLegs: 0];
        [self setNumberOfWings: 0];
        [self setInsectName: nil];
        [self setAnnoyanceFactor: 0];
    }
    return self;
}

// calculate annoyance factor
-(int)calculateAnnoyanceFactor
{
    NSLog(@"Need to update insectAnnoyanceFactor to include a calculation.");
    return 1;
}

@end
