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

-(IBAction)onClassButtonClick:(id)sender
{
    UIButton *classButton = (UIButton*)sender;
    if (classButton.tag == 0)
    {
        textBox.text = @"Cricket";
        stepperControl.enabled = TRUE;
        classButton.enabled = FALSE;
        antButton.enabled = TRUE;
        butterflyButton.enabled = TRUE;
        stepperControl.value = 0;
    }
    else if (classButton.tag == 1)
    {
        textBox.text = @"Butterfly";
        stepperControl.enabled = TRUE;
        classButton.enabled = FALSE;
        antButton.enabled = TRUE;
        cricketButton.enabled = TRUE;
        stepperControl.value = 0;
        
    }
    else if (classButton.tag == 2)
    {
        textBox.text = @"Ant";
        stepperControl.enabled = TRUE;
        classButton.enabled = FALSE;
        cricketButton.enabled = TRUE;
        butterflyButton.enabled = TRUE;
        stepperControl.value = 0;
        
    }
}

-(IBAction)onStepChange:(id)sender
{
    UIStepper *stepControl = (UIStepper*) sender;
    if (stepControl != nil)
    {
        int currentValue = stepControl.value;
        
        if (currentValue == 1)
        {
            if (cricketButton.enabled == FALSE)
            {
                textBox.text = @"Cricket";
            }
            else if (butterflyButton.enabled == FALSE)
            {
                textBox.text = @"Butterfly";
            }
            else textBox.text = @"Ant";
        }
        
        else
        {
            if (cricketButton.enabled == FALSE)
            {
                textBox.text = [NSString stringWithFormat:@"%d Crickets", currentValue];
            }
            else if (butterflyButton.enabled == FALSE)
            {
                textBox.text = [NSString stringWithFormat:@"%d Butterflies", currentValue];
            }
            else textBox.text = [NSString stringWithFormat:@"%d Ants", currentValue];
        }
        
    }
}

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
