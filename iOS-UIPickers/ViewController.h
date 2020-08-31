//
//  ViewController.h
//  iOS-UIPickers
//
//  Created by alex on 23/8/20.
//  Copyright © 2020 alex. All rights reserved.
//

#import <UIKit/UIKit.h>

//here we implement 2 protocols for the PickerView :  <UIPickerViewDelegate, UIPickerViewDataSource>
//don't forget to add the  <>  this is how we implement protocols in objective-c
@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UITextField *dobTextField;
@property (weak, nonatomic) IBOutlet UIDatePicker *dobDatePicker;

@property (weak, nonatomic) IBOutlet UIPickerView *statePicker;
@property NSArray* states;

@end

