#import "Mytransition.h"
#import <Cordova/CDV.h>
#import "Cordova/CDVViewController.h"

@implementation Mytransition

- (void)available:(CDVInvokedUrlCommand*)command {
    NSString *callbackId = command.callbackId;

    BOOL avail = false;
    if (NSClassFromString(@"UIActivityViewController")) {
      avail = true;
    }

    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:avail];
    [self writeJavascript:[pluginResult toSuccessCallbackString:callbackId]];
}
- (void)curl:(CDVInvokedUrlCommand*)command {
    NSMutableDictionary *args = [command.arguments objectAtIndex:0];
    double duration = [[args objectForKey:@"duration"] doubleValue];
    NSString *direction = [args objectForKey:@"direction"];
    
    NSUInteger animation = UIViewAnimationOptionTransitionCurlUp;
    
    if ([direction isEqualToString:@"down"])
    {
        animation = UIViewAnimationOptionTransitionCurlDown;
    }
    
    [UIView transitionWithView:self.viewController.view
                      duration:duration
                       options:UIViewAnimationOptionAllowAnimatedContent
     |animation
                    animations:^{}
                    completion:^(BOOL finished) {
                        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
                        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
                    }];

    
}
- (void)fade:(CDVInvokedUrlCommand*)command {
    NSMutableDictionary *args = [command.arguments objectAtIndex:0];
    double duration = [[args objectForKey:@"duration"] doubleValue];
    
    [UIView transitionWithView:self.viewController.view
                      duration:duration
                       options:UIViewAnimationOptionAllowAnimatedContent
     |UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{}
                    completion:^(BOOL finished) {
                        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
                        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
                    }];

}
- (void)flip:(CDVInvokedUrlCommand*)command {
    NSMutableDictionary *args = [command.arguments objectAtIndex:0];
    double duration = [[args objectForKey:@"duration"] doubleValue];
    NSString *direction = [args objectForKey:@"direction"];
    
    NSUInteger animation = UIViewAnimationOptionTransitionFlipFromLeft;
    
    if ([direction isEqualToString:@"right"])
    {
        animation = UIViewAnimationOptionTransitionFlipFromRight;
    }
    
    [UIView transitionWithView:self.viewController.view
                      duration:duration
                       options:UIViewAnimationOptionAllowAnimatedContent
     |animation
                    animations:^{}
                    completion:^(BOOL finished) {
                        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
                        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
                    }];

    
}

@end
