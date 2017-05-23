//
//  CustomTableHeaderCell.m
//  TestTableHeaderCell
//
//  Created by tomfriwel on 20/04/2017.
//  Copyright © 2017 tomfriwel. All rights reserved.
//

#import "CustomTableHeaderCell.h"

@implementation CustomTableHeaderCell

-(NSFont *)font {
    return [NSFont fontWithName:@"Arial" size:22];
}

-(NSColor *)textColor {
    return [NSColor whiteColor];
}

- (void)drawInteriorWithFrame:(NSRect)cellFrame inView:(NSView *)controlView {
    NSTableHeaderView *tableHeaderView = (NSTableHeaderView *)controlView;
    NSRect headerFrame = tableHeaderView.frame;
    NSLog(@"%@", NSStringFromRect(headerFrame));
    // Draw background gradient
    [NSGraphicsContext saveGraphicsState];
    NSBezierPath *backgroundPath = [NSBezierPath bezierPathWithRect:headerFrame];
    NSGradient *backgroundGradient = [[NSGradient alloc] initWithColorsAndLocations:
                                      [NSColor colorWithRed:0.36 green:0.58 blue:0.68 alpha:1.00], 0.0,
                                      [NSColor colorWithRed:0.06 green:0.35 blue:0.70 alpha:1.00], 1.0,
                                      nil];
    [backgroundGradient drawInBezierPath:backgroundPath angle:90.0];
    [NSGraphicsContext restoreGraphicsState];
    
    // Draw text
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
    [style setLineBreakMode:NSLineBreakByWordWrapping];
    [style setAlignment:[self alignment]];
    NSDictionary *attributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                [self font], NSFontAttributeName,
                                style, NSParagraphStyleAttributeName, [self textColor], NSForegroundColorAttributeName, nil];
    NSRect stringRect = NSMakeRect(headerFrame.origin.x + 6,
                                   headerFrame.origin.y,
                                   headerFrame.size.width - 12,
                                   headerFrame.size.height);
    
    [[self stringValue] drawInRect:stringRect withAttributes:attributes];
    
//    NSImage *indicator = nil;
//    for (NSTableColumn *i in [[tableHeaderView tableView] tableColumns]) {
//        if ([i headerCell] == self) {
//            indicator = [[tableHeaderView tableView] indicatorImageInTableColumn:i];
//        }
//    }
//    
//    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
//    [style setLineBreakMode:NSLineBreakByTruncatingTail];
//    [style setAlignment:[self alignment]];
//    NSDictionary *attributes = [NSDictionary dictionaryWithObjectsAndKeys:
//                                [NSFont systemFontOfSize:11], NSFontAttributeName,
//                                style, NSParagraphStyleAttributeName, nil];
//    NSRect stringRect = NSMakeRect(cellFrame.origin.x + 6,
//                                   cellFrame.origin.y,
//                                   cellFrame.size.width - 12,
//                                   cellFrame.size.height);
//    if (indicator) {
//        stringRect.size.width -= 15;
//    }
//    
//    [[self stringValue] drawInRect:stringRect withAttributes:attributes];
//    
//    if (indicator) {
//        [indicator drawInRect:NSMakeRect(cellFrame.origin.x + cellFrame.size.width - 15, cellFrame.origin.y + 3, 9, 9)
//                     fromRect:NSZeroRect
//                    operation:NSCompositingOperationSourceOver
//                     fraction:1.0
//               respectFlipped:YES
//                        hints:nil];
//    }
}
//-(void)drawFocusRingMaskWithFrame:(NSRect)cellFrame inView:(NSView *)controlView {
//    cellFrame.size.height = 142;
//    // Background gradient
//    [NSGraphicsContext saveGraphicsState];
//    NSBezierPath *backgroundPath = [NSBezierPath bezierPathWithRect:cellFrame];
//    NSGradient *backgroundGradient = [[NSGradient alloc] initWithColorsAndLocations:
//                                      [NSColor colorWithRed:0.36 green:0.58 blue:0.68 alpha:1.00], 0.0,
//                                      [NSColor colorWithRed:0.06 green:0.35 blue:0.70 alpha:1.00], 1.0,
//                                      nil];
//    [backgroundGradient drawInBezierPath:backgroundPath angle:90.0];
//    [NSGraphicsContext restoreGraphicsState];
//}
//
//-(void)drawWithFrame:(NSRect)cellFrame inView:(NSView *)controlView {
//    cellFrame.size.height = 142;
//    // Background gradient
//    [NSGraphicsContext saveGraphicsState];
//    NSBezierPath *backgroundPath = [NSBezierPath bezierPathWithRect:cellFrame];
//    NSGradient *backgroundGradient = [[NSGradient alloc] initWithColorsAndLocations:
//                                      [NSColor colorWithRed:0.36 green:0.58 blue:0.68 alpha:1.00], 0.0,
//                                      [NSColor colorWithRed:0.06 green:0.35 blue:0.70 alpha:1.00], 1.0,
//                                      nil];
//    [backgroundGradient drawInBezierPath:backgroundPath angle:90.0];
//    [NSGraphicsContext restoreGraphicsState];
//}
//
//-(void)drawInteriorWithFrame:(NSRect)cellFrame inView:(NSView *)controlView {
//    cellFrame.size.height = 142;
//    // Background gradient
//    [NSGraphicsContext saveGraphicsState];
//    NSBezierPath *backgroundPath = [NSBezierPath bezierPathWithRect:cellFrame];
//    NSGradient *backgroundGradient = [[NSGradient alloc] initWithColorsAndLocations:
//                                      [NSColor colorWithRed:0.36 green:0.58 blue:0.68 alpha:1.00], 0.0,
//                                      [NSColor colorWithRed:0.06 green:0.35 blue:0.70 alpha:1.00], 1.0,
//                                      nil];
//    [backgroundGradient drawInBezierPath:backgroundPath angle:90.0];
//    [NSGraphicsContext restoreGraphicsState];
//}
//
////-(NSRect)drawingRectForBounds:(NSRect)rect {
////    rect.size.height = 142;
////    return [super drawingRectForBounds:rect];
////}
////
//-(void)drawWithExpansionFrame:(NSRect)cellFrame inView:(NSView *)view {
//    cellFrame.size.height = 142;
//    // Background gradient
//    [NSGraphicsContext saveGraphicsState];
//    NSBezierPath *backgroundPath = [NSBezierPath bezierPathWithRect:cellFrame];
//    NSGradient *backgroundGradient = [[NSGradient alloc] initWithColorsAndLocations:
//                                      [NSColor colorWithRed:0.36 green:0.58 blue:0.68 alpha:1.00], 0.0,
//                                      [NSColor colorWithRed:0.06 green:0.35 blue:0.70 alpha:1.00], 1.0,
//                                      nil];
//    [backgroundGradient drawInBezierPath:backgroundPath angle:90.0];
//    [NSGraphicsContext restoreGraphicsState];
//}

@end
