//
//  baseEvent.h
//  APLOCWeek2
//
//  Created by Brent Marohnic on 2/14/13.
//  Copyright (c) 2013 Brent Marohnic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface baseEvent : NSObject
{
    int eventEnum;
}

typedef enum
{
    SWIM,
    BIKE,
    RUN
} eventEnum;

// common data members for all events

@property NSString *eventName;
@property int eventDistance;
@property int eventTimeInMinutes;

// initialize
-(id)init;

// calculate event time
-(float)calculateEventTime;

@end
