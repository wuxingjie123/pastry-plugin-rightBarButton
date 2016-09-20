//
//  CDVRightSide.m
//  HelloWorld
//
//  Created by 董阳阳 on 16/9/16.
//
//

#import "PTRightBarButton.h"

#define OPENSIDEVIEW @"OpenRightSideView"
#define CLOSESIDEVIEW @"CloseRightSideView"
@implementation PTRightBarButton

- (void)rightBarButtonItem:(CDVInvokedUrlCommand *)command;
{
    
//    [[NSNotificationCenter defaultCenter] postNotificationName:@"OpenRightSideView" object:self userInfo:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(getRightSideViewState:) name:OPENSIDEVIEW object:command.callbackId];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(getRightSideViewState:) name:CLOSESIDEVIEW object:command.callbackId];

}




- (void)getRightSideViewState:(NSNotification *)notification
{
    NSString *objectStr = ([notification.name isEqualToString:OPENSIDEVIEW])?@"open":@"close";
    CDVPluginResult *result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:objectStr];
    [self.commandDelegate sendPluginResult:result callbackId:notification.object];
}

@end
