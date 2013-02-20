//
//  ViewController2.m
//  datePlanner
//
//  Created by Brent Marohnic on 2/19/13.
//  Copyright (c) 2013 Brent Marohnic. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        delegate = nil;
        
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    eventDatePicker.minimumDate = [NSDate date];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)hideSecondView:(id)sender
{
    if (delegate != nil)
    {
        [delegate onClose:eventTextField.text pickerDate:eventDatePicker.date];
    }
    
    [self dismissViewControllerAnimated:TRUE completion:nil];
}

-(IBAction)onTextEnter:(id)sender
{
    btnHideKeyboard.hidden = FALSE;
    lblHideKeyboard.hidden = FALSE;
    lblDatePicker.hidden = TRUE;
    
}

-(IBAction)hideKeyboard:(id)sender
{
    [eventTextField resignFirstResponder];
    
    btnHideKeyboard.hidden = TRUE;
    lblHideKeyboard.hidden = TRUE;
    lblDatePicker.hidden = FALSE;
}
@end
