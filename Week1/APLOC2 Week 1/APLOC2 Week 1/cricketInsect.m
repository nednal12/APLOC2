//
//  cricketInsect.m
//  APLOC2 Week 1
//
//  Created by Brent Marohnic on 2/11/13.
//  Copyright (c) 2013 Brent Marohnic. All rights reserved.
//

#import "cricketInsect.h"

@implementation cricketInsect

@synthesize sleepDerprivationLevel, constantChirping, nocturnal;

// set unique data members from within INIT

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setInsectName:@"cricket"];
        [self setSleepDerprivationLevel:0];
        [self setConstantChirping: 5];
        [self setNocturnal: 5];
        
    }
    return self;
}


// override the base insect method
-(int)calculateAnnoyanceFactor
{
    [self setAnnoyanceFactor:(sleepDerprivationLevel + constantChirping + nocturnal)];
    NSLog(@"The cricket has an annoyance factor of %i out of 20.", self.annoyanceFactor);
    return self.annoyanceFactor;
}


@end
