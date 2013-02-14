//
//  ViewController.m
//  APLOCWeek2
//
//  Created by Brent Marohnic on 2/14/13.
//  Copyright (c) 2013 Brent Marohnic. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)onClick:(id)sender
{
    ViewController2 *secondView = [[ViewController2 alloc] initWithNibName:@"ViewController2" bundle:nil];
    
    if (secondView != nil)
    {
        [self presentViewController:secondView animated:TRUE completion:nil];
    }
}

-(IBAction)onChange:(id)sender
{
    UISegmentedControl *segControl = (UISegmentedControl*)sender;
    if (segControl != nil)
    {
        int selectedIndex = segControl.selectedSegmentIndex;
        
        if (selectedIndex == 0)
        {
            self.view.backgroundColor = [UIColor redColor];
        }
        else if (selectedIndex == 1)
        {
            self.view.backgroundColor = [UIColor blueColor];
        }
        else if (selectedIndex == 2)
        {
            self.view.backgroundColor = [UIColor greenColor];
        }

    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
