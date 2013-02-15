//
//  eventFactory.h
//  APLOCWeek2
//
//  Created by Brent Marohnic on 2/14/13.
//  Copyright (c) 2013 Brent Marohnic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "baseEvent.h"
#import "swimEvent.h"
#import "bikeEvent.h"
#import "runEvent.h"

@interface eventFactory : NSObject

+(baseEvent *)createNewEvent:(int)eventType;

@end
