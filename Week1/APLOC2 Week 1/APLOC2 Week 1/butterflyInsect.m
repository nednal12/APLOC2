//
//  butterflyInsect.m
//  APLOC2 Week 1
//
//  Created by Brent Marohnic on 2/11/13.
//  Copyright (c) 2013 Brent Marohnic. All rights reserved.
//

#import "butterflyInsect.h"

@implementation butterflyInsect

@synthesize soothingFlightPattern, pollinator;

// set unique data members from within INIT

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setInsectName:@"butterfly"];
        [self setSoothingFlightPattern: 0];
        [self setPollinator: 0];
        
    }
    return self;
}


// override the base insect method
-(int)calculateAnnoyanceFactor
{
    [self setAnnoyanceFactor:(soothingFlightPattern + pollinator)];
    NSLog(@"The butteryfly has an annoyance factor of %i out of 20.", self.annoyanceFactor);
    return self.annoyanceFactor;
}


@end
