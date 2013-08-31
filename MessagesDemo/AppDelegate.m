//
//  AppDelegate.m
//
//  Created by Jesse Squires on 2/12/13.
//  Copyright (c) 2013 Hexed Bits. All rights reserved.
//
//  http://www.hexedbits.com
//
//
//  The MIT License
//  Copyright (c) 2013 Jesse Squires
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
//  associated documentation files (the "Software"), to deal in the Software without restriction, including
//  without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the
//  following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT
//  LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
//  IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
//  IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE
//  OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

#import "AppDelegate.h"
#import "DemoViewController.h"
#import "JSBubbleView.h"
#import "JSMessageInputView.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    DemoViewController *vc = [DemoViewController new];
	UINavigationController *nc = [[UINavigationController alloc] initWithRootViewController:vc];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	self.window.rootViewController = nc;
	[self.window makeKeyAndVisible];
    
    [self customizeUI];
    
    return YES;
}

- (void)customizeUI
{
    [[JSBubbleView appearance] setBubbleImageIncoming:[[UIImage imageNamed:@"message_sender"] resizableImageWithCapInsets:UIEdgeInsetsMake(20.0f, 24.0f, 4.0f, 4.0f) resizingMode:UIImageResizingModeStretch]];
    [[JSBubbleView appearance] setBubbleImageIncomingHighlighted:[[UIImage imageNamed:@"message_sender"] resizableImageWithCapInsets:UIEdgeInsetsMake(20.0f, 24.0f, 4.0f, 4.0f) resizingMode:UIImageResizingModeStretch]];
    [[JSBubbleView appearance] setBubbleImageOutgoing:[[UIImage imageNamed:@"message_receiver"] resizableImageWithCapInsets:UIEdgeInsetsMake(20.0f, 10.0f, 4.0f, 24.0f) resizingMode:UIImageResizingModeStretch]];
    [[JSBubbleView appearance] setBubbleImageOutgoingHighlighted:[[UIImage imageNamed:@"message_receiver"] resizableImageWithCapInsets:UIEdgeInsetsMake(20.0f, 10.0f, 4.0f, 24.0f) resizingMode:UIImageResizingModeStretch]];
   
    [[JSBubbleView appearance] setFont:[UIFont systemFontOfSize:14.0f]];
    [[JSBubbleView appearance] setTextColorIncoming:[UIColor whiteColor]];
    [[JSBubbleView appearance] setTextColorOutgoing:[UIColor grayColor]];
    
    [[JSMessageInputView appearance] setBackgroundImage:[UIImage imageNamed:@"messagebar"]];
    [[JSMessageInputView appearance] setTextFieldbackgroundImage:[[UIImage imageNamed:@"messagefield"] resizableImageWithCapInsets:UIEdgeInsetsMake(14.0f, 14.0f, 14.0f, 14.0f)]];
    
//    [[UIButton appearanceWhenContainedIn:[JSMessageInputView class], nil] setBackgroundImage:[UIImage imageNamed:@"send_button"] forState:UIControlStateNormal];
}

- (void)applicationWillResignActive:(UIApplication *)application { }

- (void)applicationDidEnterBackground:(UIApplication *)application { }

- (void)applicationWillEnterForeground:(UIApplication *)application { }

- (void)applicationDidBecomeActive:(UIApplication *)application { }

- (void)applicationWillTerminate:(UIApplication *)application { }

@end