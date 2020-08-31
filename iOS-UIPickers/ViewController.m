//
//  ViewController.m
//  iOS-UIPickers
//
//  Created by alex on 23/8/20.
//  Copyright © 2020 alex. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

NSString *formatedDate;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //remember this changes the UI presentation, you will always get the same data, you need to format it as well
    [[self dobDatePicker] setDatePickerMode:UIDatePickerModeDate];
//    [[self dobDatePicker] setDatePickerMode:UIDatePickerModeDateAndTime];
//    [[self dobDatePicker] setDatePickerMode:UIDatePickerModeTime];
//    [[self dobDatePicker] setDatePickerMode:UIDatePickerModeCountDownTimer];
    
    _states = @[@"NSW", @"WA", @"QLD", @"VIC", @"SA", @"TAS"];
    
    /**
        here are 3 different ways to indicate  the datasource and the delegate will be implemented in this controller.
     */
    //    First way
    //    self.statePicker.dataSource = self;
    //    self.statePicker.delegate = self;
        
    //    Second Way
        _statePicker.dataSource = self;
        _statePicker.delegate = self;
        
    //    Third way
    //    [[self statePicker] setDelegate:self];
    //    [[self statePicker] setDataSource:self];

}

- (IBAction)dobButtonPressed:(id)sender {
    
//    if ([[[self dobButton] titleForState:UIControlStateNormal] isEqualToString:@"show"] ) {
//        [[self dobDatePicker] setHidden:NO];
//        [[self dobButton] setTitle:@"select" forState:UIControlStateNormal];
//    }else{
//        if ([[[self dobButton] titleForState:UIControlStateNormal] isEqualToString:@"select"]){
//            [[self dobButton] setTitle:formatedDate forState:UIControlStateNormal];
//            [[self dobDatePicker] setHidden:YES];
//        }else{
//            [[self dobButton] setTitle:@"select" forState:UIControlStateNormal];
//            [[self dobDatePicker] setHidden:NO];
//        }
//    }

    
}

//Here to create this method right click on the control
- (IBAction)dateChanged:(id)sender {
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//  [dateFormatter setDateFormat:@"dd-MM-yyyy HH:mm"];
    [dateFormatter setDateFormat:@"dd-MM-yyyy"];
    formatedDate = [dateFormatter stringFromDate:[self dobDatePicker].date];

    [_dobTextField setText:formatedDate];
}

//number of columns of data
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
//set the number of rows in the component
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [[self states] count];
}
//here we set a title for each row
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [self states][row];
    //    return [states objectAtIndex:row];
}
//works everytime a row is selected
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    NSLog(@"You have selected: %@", [self states][row] );
}

@end
