//
//  TipCalculatorViewController.h
//  TipCalculator
//
//  Created by Preethi Srinivasan on 5/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TipCalculatorViewController : UIViewController {
	UITextField     *Amount;
	UIPickerView *Percent;
	UILabel *TotalTip;
	UITextField	*Tip;
	NSMutableArray *arrayPercent;
	

}
@property (retain, nonatomic) IBOutlet UITextField *Amount;
@property (retain, nonatomic) IBOutlet UIPickerView *Percent;
@property (retain, nonatomic) IBOutlet UILabel *TotalTip;
@property (retain, nonatomic) IBOutlet UITextField *Tip;
- (IBAction) CalculateTip;
- (IBAction)textFieldReturn:(id)sender;
- (IBAction)backgroundTouched:(id)sender;
- (bool)TextIsValidValue:(NSString *)newText; 

@end


