//
//  MessageViewController.m
//  Magical Record Demo
//
//  Created by Antoine Campbell on 4/4/13.
//  Copyright (c) 2013 Antoine Campbell. All rights reserved.
//

#import "MessageViewController.h"
#import "Message.h"

@interface MessageViewController ()
@property (nonatomic, strong) IBOutlet UITextField *messageTextField;
@end

@implementation MessageViewController
@synthesize messageTextField = _messageTextField;

-(void)viewDidLoad
{
	[super viewDidLoad];
	[self.messageTextField becomeFirstResponder];
}

- (IBAction)cancelPressed
{
	[self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)addPressed
{
	Message *message = [Message MR_createEntity];
	message.timestamp = [NSDate date];
	message.text = self.messageTextField.text;
	[self cancelPressed];
}

@end
