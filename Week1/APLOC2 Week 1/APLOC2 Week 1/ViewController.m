//
//  ViewController.m
//  APLOC2 Week 1
//
//  Created by Brent Marohnic on 2/7/13.
//  Copyright (c) 2013 Brent Marohnic. All rights reserved.
//

#import "ViewController.h"
#import "Child.h"
#import "ChildFactory.h"
#import "GoodChild.h"
#import "BadChild.h"
#import "RottenChild.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    ChildFactory *childFactory = [[ChildFactory alloc] init];
    if (childFactory != nil)
    {
        Child *Jack = [childFactory GetChild:0];
        
        [Jack showName];
    }
    
    
    //Instantiate instances of the subclasses and set their attributes
    GoodChild *goodChild = [[GoodChild alloc] init];
    {
        if (goodChild != nil)
        {
            [goodChild setAttributes];
        }
    }
    
    BadChild *badChild = [[BadChild alloc] init];
    {
        if (badChild != nil)
        {
            [badChild setAttributes];
        }
    }
    
    RottenChild *rottenChild = [[RottenChild alloc] init];
    {
        if (rottenChild != nil)
        {
            [rottenChild setAttributes];
        }
    }

    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Setup the labels that will hold the static and dynamic values
    
    firstLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 50)];
    secondLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 51, 320, 50)];
    
    thirdLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 120, 320, 50)];
    fourthLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 171, 320, 50)];
    
    fifthLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 240, 320, 50)];
    sixthLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 291, 320, 50)];
    
    Child *firstChild = [[Child alloc] init];
    if (firstChild != nil)
    {
        firstChild.intChild = 2;
        
        secondLabel.text = firstChild.showChild;

    }
    
    firstLabel.text = @"Good Child";
    secondLabel.text = goodChild->strName;
    thirdLabel.text = @"Bad Child";
    fourthLabel.text = badChild->strName;
    fifthLabel.text = @"Rotten Child";
    sixthLabel.text = rottenChild->strName;
    
    
    //Show the labels
    
    [self.view addSubview:firstLabel];
    [self.view addSubview:secondLabel];
    
    [self.view addSubview:thirdLabel];
    [self.view addSubview:fourthLabel];
    
    [self.view addSubview:fifthLabel];
    [self.view addSubview:sixthLabel];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
