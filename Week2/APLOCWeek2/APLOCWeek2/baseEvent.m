//
//  baseEvent.m
//  APLOCWeek2
//
//  Created by Brent Marohnic on 2/14/13.
//  Copyright (c) 2013 Brent Marohnic. All rights reserved.
//

#import "baseEvent.h"

@implementation baseEvent

// allow the compiler to automatically genenate get and set methods for the event properties
@synthesize eventDistance, eventName, eventTimeInMinutes;

// initilize the base event
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setEventName: nil];
        [self setEventDistance: 0];
        [self setEventTimeInMinutes:0];
    }
    return self;
}

// calculate event time
-(float)calculateEventTime
{
    NSLog(@"This will be overridden");
    return 1.0;
}

@end
