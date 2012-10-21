//
//  TipCalculatorAppDelegate.h
//  TipCalculator
//
//  Created by Preethi Srinivasan on 5/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TipCalculatorViewController;

@interface TipCalculatorAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TipCalculatorViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TipCalculatorViewController *viewController;

@end

