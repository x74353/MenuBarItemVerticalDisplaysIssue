//
//  AppDelegate.m
//  MenuBarItem_DualDisplay_VerticalArrangement_IssueExample
//
//  Created by William Gustafson on 10/29/19.
//  Copyright © 2019 William Gustafson. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // create status item
    self.statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength : NSVariableStatusItemLength];
    [self.statusItem.button sendActionOn : (NSEventMaskLeftMouseUp|NSEventMaskRightMouseUp)];
    [self.statusItem.button setAction : @selector(statusItemClicked:)];
    self.statusItem.button.title = @"Hello World";
    self.statusMenu.delegate = self;
}

// called when the status item is clicked in the menu bar
- (IBAction) statusItemClicked : (id) sender
{
    NSEvent *currentEvent = [NSApp currentEvent];
    
    bool rightClick = NO;
    
    // all right click conditions
    if  ((([currentEvent modifierFlags] & NSEventModifierFlagControl) == NSEventModifierFlagControl) ||
         (([currentEvent modifierFlags] & NSEventModifierFlagCommand) == NSEventModifierFlagCommand) ||
         (([currentEvent modifierFlags] & NSEventMaskRightMouseUp) == NSEventMaskRightMouseUp) ||
         (([currentEvent modifierFlags] & NSEventMaskRightMouseDown) == NSEventMaskRightMouseDown) ||
         ([currentEvent type] == NSEventTypeRightMouseDown) ||
         ([currentEvent type] == NSEventTypeRightMouseUp))
    {
        rightClick = YES;
    }
    
    // show menu
    if (rightClick)
    {
        NSLog(@"right click");
        [self showStatusMenu:self];
    }
    else
    {
        NSLog(@"left click");
        [self showStatusMenu:self];
    }
}

-(IBAction) showStatusMenu : (id) sender
{
    [self.statusItem performSelector : @selector(popUpStatusItemMenu:) withObject : self.statusMenu afterDelay : .01];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification
{
    // Insert code here to tear down your application
}


@end
