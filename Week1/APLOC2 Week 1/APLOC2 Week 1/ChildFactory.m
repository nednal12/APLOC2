//
//  ChildFactory.m
//  APLOC2 Week 1
//
//  Created by Brent Marohnic on 2/7/13.
//  Copyright (c) 2013 Brent Marohnic. All rights reserved.
//

#import "ChildFactory.h"
#import "Child.h"

@implementation ChildFactory

-(Child*)GetChild:(int)childType
{
    if (childType == 0)
    {
        return [[Child alloc] initWithDetails:0 inpStrName:@"Jack"];
    }
    else if (childType == 1)
    {
        return [[Child alloc] initWithDetails:1 inpStrName:@"Connor"];
    }
    return nil;
    
}
@end
