//
//  main.m
//  HelloWorld
//
//  Created by Shraddha Arora on 11/07/23.
//

#import <Cocoa/Cocoa.h>

@interface Window : NSWindow {
    NSTextField* label;
}
- (instancetype)init;
- (BOOL)windowShouldClose: (id) sender;
@end

@implementation Window
- (instancetype)init {
    label = [[NSTextField alloc] initWithFrame:NSMakeRect(5, 100, 290, 100)];
    [label setStringValue:@"Hello, World!"];
    self = [super
               initWithContentRect: NSMakeRect(0, 0, 300, 300)
                         styleMask:NSWindowStyleMaskTitled
                                  |NSWindowStyleMaskClosable
                                  |NSWindowStyleMaskMiniaturizable
                           backing:NSBackingStoreBuffered
                             defer:NO ];
    [self setTitle:@"Hello world"];
    [[self contentView] addSubview:label];
    [self center];
    [self setIsVisible:YES];
    return self;
}
- (BOOL)windowShouldClose:(id)sender {
  [NSApp terminate:sender];
  return YES;
}
@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSWorkspace * ws = [NSWorkspace sharedWorkspace];
        BOOL wasLaunched = [ws launchApplication:@"Finder"];
        [NSApplication sharedApplication];
        [[[Window alloc] init] makeMainWindow];
        [NSApp run];
    }
    return NSApplicationMain(argc, argv);
}

