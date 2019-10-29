//
//  AppDelegate.h
//  MenuBarItem_DualDisplay_VerticalArrangement_IssueExample
//
//  Created by William Gustafson on 10/29/19.
//  Copyright © 2019 William Gustafson. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate, NSMenuDelegate>

@property (strong) NSStatusItem *statusItem;
@property (strong) IBOutlet NSMenu *statusMenu;

@end

