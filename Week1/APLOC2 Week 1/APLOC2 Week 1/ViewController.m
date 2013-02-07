//
//  ViewController.m
//  APLOC2 Week 1
//
//  Created by Brent Marohnic on 2/7/13.
//  Copyright (c) 2013 Brent Marohnic. All rights reserved.
//

#import "ViewController.h"
#import "Child.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    firstLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 200)];
    firstLabel.numberOfLines = 2;
    
    Child *firstChild = [[Child alloc] init];
    if (firstChild != nil)
    {
        firstChild.intChild = 2;
        
        firstLabel.text = firstChild.showChild;

    }
    
    [self.view addSubview:firstLabel];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
