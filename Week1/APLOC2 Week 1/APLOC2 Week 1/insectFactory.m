//
//  insectFactory.m
//  APLOC2 Week 1
//
//  Created by Brent Marohnic on 2/11/13.
//  Copyright (c) 2013 Brent Marohnic. All rights reserved.
//

#import "insectFactory.h"

@implementation insectFactory

+(baseInsect *)createNewInsect:(int)insectType
{
    if (insectType == CRICKET)
    {
        return [[cricketInsect alloc] init];
    }
    else if (insectType == BUTTERFLY)
    {
        return [[butterflyInsect alloc] init];
    }
    else if (insectType == ANT)
    {
        return [[antInsect alloc] init];
    }
    else return nil;
        
}

@end
