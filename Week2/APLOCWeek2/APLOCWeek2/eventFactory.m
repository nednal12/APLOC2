//
//  eventFactory.m
//  APLOCWeek2
//
//  Created by Brent Marohnic on 2/14/13.
//  Copyright (c) 2013 Brent Marohnic. All rights reserved.
//

#import "eventFactory.h"


@implementation eventFactory

+(baseEvent *)createNewEvent:(int)eventType
{
    if (eventType == SWIM)
    {
        return [[swimEvent alloc] init];
    }
    else if (eventType == BIKE)
    {
        return [[bikeEvent alloc] init];
    }
    else if (eventType == RUN)
    {
        return [[runEvent alloc] init];
    }
    else return nil;
}

@end
