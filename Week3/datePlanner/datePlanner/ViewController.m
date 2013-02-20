//
//  ViewController.m
//  datePlanner
//
//  Created by Brent Marohnic on 2/19/13.
//  Copyright (c) 2013 Brent Marohnic. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()

@end

@implementation ViewController

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

-(IBAction)showSecondView:(id)sender
{
    ViewController2 *secondView = [[ViewController2 alloc] initWithNibName:@"ViewController2" bundle:nil];
    
    if (secondView != nil)
    {
        secondView.delegate = self;
        
        [self presentViewController:secondView animated:TRUE completion:nil];
    }
}

-(void)onClose:(NSString *)eventString pickerDate:(NSDate *)pickerDate
{

    if (![eventString isEqual: @""])
    {
        
        NSMutableString *newTextViewText = [[NSMutableString alloc] initWithString:mainTextView.text];
        
        dateFormatter = [[NSDateFormatter alloc] init];
        
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        
        NSString *dateString = [[NSString alloc] initWithString:[dateFormatter stringFromDate:pickerDate]];
    
        [newTextViewText appendString:@"\n\nNew Event: "];
    
        [newTextViewText appendString:eventString];
        
        [newTextViewText appendString:@"\n"];
        
        [newTextViewText appendString:dateString];
    
        mainTextView.text = newTextViewText;
    
    }
        
}

@end
