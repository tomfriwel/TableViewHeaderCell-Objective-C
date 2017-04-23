//
//  ViewController.m
//  TestTableHeaderCell
//
//  Created by tomfriwel on 20/04/2017.
//  Copyright © 2017 tomfriwel. All rights reserved.
//

#import "ViewController.h"

#import "CustomTableHeaderCell.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    CustomTableHeaderCell *headerCell = [[CustomTableHeaderCell alloc] init];
    headerCell.stringValue = @"Header title";
    self.tableView.tableColumns[0].headerCell = headerCell;
    // optional
//    [self.tableView.headerView setNeedsLayout:YES];
}

#pragma mark - NSTableViewDelegate, NSTableViewDataSource


- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return 19;
}

- (CGFloat)tableView:(NSTableView *)tableView heightOfRow:(NSInteger)row{
    return 55;
}

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    NSTableCellView *cell = [[NSTableCellView alloc] init];
    
    NSTextField *textfield = [[NSTextField alloc] initWithFrame:CGRectMake(0, 0, 100, 44)];
    textfield.stringValue = [NSString stringWithFormat:@"%ld", row];
    [cell addSubview:textfield];
    
    return cell;
}

@end
