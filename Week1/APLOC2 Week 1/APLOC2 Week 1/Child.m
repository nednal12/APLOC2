//
//  Child.m
//  APLOC2 Week 1
//
//  Created by Brent Marohnic on 2/7/13.
//  Copyright (c) 2013 Brent Marohnic. All rights reserved.
//

#import "Child.h"

@implementation Child

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        intChild = 1;
        fltChild = 150.69;
        blnChild = TRUE;
    }
    
    return self;
}


-(NSString*)showChild
{
    NSString* returnThis = [[NSString alloc] initWithFormat:@"intChild = %d, fltChild = %f, blnChild = %c", intChild, fltChild, blnChild];
    
    return returnThis;
    
}

@end
