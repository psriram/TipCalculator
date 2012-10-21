//
//  TipCalculatorViewController.m
//  TipCalculator
//
//  Created by Preethi Srinivasan on 5/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TipCalculatorViewController.h"


@implementation TipCalculatorViewController
@synthesize Amount, Percent, TotalTip,Tip;
int percent_value;


- (void) CalculateTip{
	float amount_val;
	bool valid;
    valid=true;
	//valid = [self TextIsValidValue:newText];
	if ( valid ) {
		float amount_val = [Amount.text floatValue];

		if (amount_val > 0 && percent_value > 0){
			float total_val = (amount_val * percent_value)/100;
			Tip.text = [NSString stringWithFormat:@"%1.2f",total_val];	
		}
		else{
			Tip.text = [NSString stringWithFormat:@"%f",5];
		}
		
	}
	else{
		NSString *errorText = @"Invalid Amount";
		Amount.text = [NSString stringWithFormat:@"%@",errorText];
	}
}
/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	arrayPercent = [[NSMutableArray alloc] init];
	[arrayPercent addObject:@"5"];
	[arrayPercent addObject:@"10"];
	[arrayPercent addObject:@"15"];
	[arrayPercent addObject:@"20"];
	[arrayPercent addObject:@"25"];
	
}


- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)thePickerView {
	
	return 1;
}
- (NSInteger)pickerView:(UIPickerView *)thePickerView numberOfRowsInComponent:(NSInteger)component {
	
	return [arrayPercent count];
}
- (NSString *)pickerView:(UIPickerView *)thePickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
	return [arrayPercent objectAtIndex:row];
}
- (void)pickerView:(UIPickerView *)thePickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
	
	NSLog(@"Selected Percent: %@. Index of selected percent: %i", [arrayPercent objectAtIndex:row], row);
	NSString *tip_val = [arrayPercent objectAtIndex:row];
	percent_value = [tip_val intValue];
}
-(IBAction)textFieldReturn:(id)sender
{
	[sender resignFirstResponder];
} 
-(IBAction)backgroundTouched:(id)sender
{
	[Amount resignFirstResponder];
}

-(bool)TextIsValidValue:(NSString *)newText
{
	bool valid = false;
	
	NSCharacterSet *alphaNums = [NSCharacterSet decimalDigitCharacterSet];
	
	NSCharacterSet *inStringSet = [NSCharacterSet characterSetWithCharactersInString:newText];
	
	valid = [alphaNums isSupersetOfSet:inStringSet];
	return valid;
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
	self.Amount = nil;
	self.Percent = nil;
	self.TotalTip = nil;
	self.Tip = nil;

	
}


- (void)dealloc {
	[Amount release];
	[Percent release];
	[TotalTip release];
	[Tip release];
	[arrayPercent release];
	
	[super dealloc];
	
}

@end
