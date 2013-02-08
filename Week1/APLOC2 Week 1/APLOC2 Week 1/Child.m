//
//  Child.m
//  APLOC2 Week 1
//
//  Created by Brent Marohnic on 2/7/13.
//  Copyright (c) 2013 Brent Marohnic. All rights reserved.
//

#import "Child.h"

@implementation Child
@synthesize intChild;

-(id)initWithDetails:(int)inpIntChild inpStrName:(NSString*)inpStrName
{
    self = [super init];
    if (self != nil)
    {
        strName = inpStrName;
        intChild = inpIntChild ;

    }
    
    return self;
}

-(void)showName
{
    NSLog(@"My name is %@", strName);
    
}




-(NSString*)showChild
{
    NSString* returnThis = [[NSString alloc] initWithFormat:@"My name is = %@", strName];

    
 /*   NSString* returnThis = [[NSString alloc] initWithFormat:@"blnChild = %c", blnChild];
 */ 
    
    return returnThis;
    
}

@end
