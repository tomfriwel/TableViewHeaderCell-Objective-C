//
//  ViewController.h
//  TestTableHeaderCell
//
//  Created by tomfriwel on 20/04/2017.
//  Copyright © 2017 tomfriwel. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController <NSTableViewDelegate, NSTableViewDataSource>
@property (weak) IBOutlet NSScrollView *topScrollView;

@property (weak) IBOutlet NSTableView *tableView;
@property (weak) IBOutlet NSView *customView;
@property NSTextField *textField;
@end

