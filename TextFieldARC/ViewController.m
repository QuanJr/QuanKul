

//  Copyright © 2016 QuanKul. All rights reserved.


#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
// creat a UITextField
    
    CGRect passwordTextFieldFrame = CGRectMake(20.0f, 100.0f, 280.0f, 31.0f);
    UITextField *passwordTextField = [[UITextField alloc] initWithFrame:passwordTextFieldFrame];
    
    // Holder a text in the field text.
    
    passwordTextField.placeholder = @"Password";
    passwordTextField.backgroundColor= [UIColor whiteColor];
    
    passwordTextField.textColor =[UIColor redColor];
    
    passwordTextField.font = [UIFont systemFontOfSize:14.0f];
    
    passwordTextField.borderStyle = UITextBorderStyleRoundedRect;
    
    passwordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    
    passwordTextField.returnKeyType =UIReturnKeyDone;
    
   // passwordTextField.textAlignment = UITextAlignmentCenter;
    passwordTextField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    
    passwordTextField.tag =2;
    
    passwordTextField.autocapitalizationType =UITextAutocapitalizationTypeNone;
    
    // add subview onto the viewController.
    
    [self.view addSubview:passwordTextField];
    passwordTextField.delegate = self;
}
-(void)touchesBegan:(NSSet*) touches withEvent:(UIEvent *)event{
    
    NSLog(@"touchBegan:withEvent");
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
    
}

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    NSLog(@"textFieldShouldBeginEditing");
    //textField.backgroundColor = [UIColor  colorWithRed:220.0f/255.0f green:220.0f/255.0f blue:220.0f/255.0f alpha:1.0f];
    textField.backgroundColor =[UIColor greenColor];
    
    return YES;
}

-(void) textFieldDidBeginEditing:(UITextField *)textField{
    
    NSLog(@"textFieldDidBeginEditing");
}

-(BOOL)textFieldShouldEndEditing:(UITextField *)textField

{
    NSLog(@"textFieldShouldEditing");
    textField.backgroundColor = [UIColor whiteColor];
    return YES;

}

-(void) textFieldDidEndEditing:(UITextField *)textField

{
    NSLog(@"textFieldDidEditing");
    
}

@end
