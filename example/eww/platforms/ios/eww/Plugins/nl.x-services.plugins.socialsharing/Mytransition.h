#import <Cordova/CDV.h>
#import "Foundation/Foundation.h"

@interface Mytransition : CDVPlugin

- (void)available:(CDVInvokedUrlCommand*)command;
- (void)share:(CDVInvokedUrlCommand*)command;
- (void) flip:(CDVInvokedUrlCommand*)command;
- (void) curl:(CDVInvokedUrlCommand*)command;
- (void) fade:(CDVInvokedUrlCommand*)command;

@end