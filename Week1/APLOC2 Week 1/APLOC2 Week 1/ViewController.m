//
//  ViewController.m
//  APLOC2 Week 1
//
//  Created by Brent Marohnic on 2/7/13.
//  Copyright (c) 2013 Brent Marohnic. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    // create a cricket 
    cricketInsect *myNewCricket = (cricketInsect*)[insectFactory createNewInsect:CRICKET];
    [myNewCricket setSleepDerprivationLevel:5];
    
    [myNewCricket calculateAnnoyanceFactor];
    
    // create a butterfly
    butterflyInsect *myNewButterfly = (butterflyInsect*)[insectFactory createNewInsect:BUTTERFLY];
    
    [myNewButterfly calculateAnnoyanceFactor];
    
    // create a ant
    antInsect *myNewAnt = (antInsect*)[insectFactory createNewInsect:ANT];
    [myNewAnt setTypeOfAnt:RED];
    
    [myNewAnt calculateAnnoyanceFactor];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Setup the labels that will hold the static and dynamic values
    
    firstLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 50)];
    secondLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 51, 320, 50)];
    
    thirdLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 170, 320, 50)];
    fourthLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 221, 320, 50)];
    
    fifthLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 340, 320, 50)];
    sixthLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 391, 320, 50)];
    
    
    firstLabel.text = [NSString stringWithFormat:@"A %@ has been created.", [myNewCricket insectName]];
    secondLabel.numberOfLines = 2;
    secondLabel.text = [NSString stringWithFormat:@"Its annoyance factor is %d when my sleep deprivation is %d", [myNewCricket annoyanceFactor], [myNewCricket sleepDerprivationLevel]];
    thirdLabel.text = [NSString stringWithFormat:@"A %@ has been created.", [myNewButterfly insectName]];
    fourthLabel.text = [NSString stringWithFormat:@"Its annoyance factor is %d simply because I like butterflies.", [myNewButterfly annoyanceFactor]];
    fourthLabel.numberOfLines = 2;
    fifthLabel.text = [NSString stringWithFormat:@"A %@ has been created.", [myNewAnt insectName]];
    sixthLabel.text = [NSString stringWithFormat:@"Its annoyance factor is %d", [myNewAnt annoyanceFactor]];
    
    
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
