//
//  ViewController2.h
//  datePlanner
//
//  Created by Brent Marohnic on 2/19/13.
//  Copyright (c) 2013 Brent Marohnic. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController2 : UIViewController
{
    IBOutlet UIButton *btnHideKeyboard;
    IBOutlet UILabel *lblHideKeyboard;
}

-(IBAction)hideSecondView:(id)sender;

-(IBAction)onTextEnter:(id)sender;

@end
