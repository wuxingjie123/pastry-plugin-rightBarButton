//
//  CDVRightSide.m
//  HelloWorld
//
//  Created by 董阳阳 on 16/9/16.
//
//

#import "PTRightBarButton.h"
#import "BrowserViewController.h"
@interface PTRightBarButton ()
{
    NSString *callbackId;
}
@end

@implementation PTRightBarButton

- (void)rightBarButtonItem:(CDVInvokedUrlCommand *)command;
{
    UIViewController *browserContainer = self.viewController.parentViewController;
    BrowserViewController *browser = (BrowserViewController *)browserContainer.parentViewController;
    [self createRightBarButton:browser.headerView];
    callbackId = command.callbackId;

}

- (void)createRightBarButton:(UIView *)headerView
{
    UIView *buttonView = [headerView viewWithTag:2003];
    if (buttonView == nil) {
        
        UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
        rightButton.frame = CGRectMake(kScreenWidth-44-5, 20, 44, 44);
        rightButton.imageEdgeInsets =UIEdgeInsetsMake(7, 7, 7, 7);
        rightButton.tag = 2003;
        UIImage *img = [UIImage imageNamed:@"rightBarButton.bundle/images/rightBar"];
        [rightButton setImage:img forState:UIControlStateNormal];
        [rightButton addTarget:self action:@selector(rightButtonAction:) forControlEvents:UIControlEventTouchUpInside];
        [headerView addSubview:rightButton];
    }
    
    UIView *delButtonView = [headerView viewWithTag:2004];
    if (delButtonView == nil) {
    
        UIButton *deleteButton = [UIButton buttonWithType:UIButtonTypeCustom];
        deleteButton.frame = CGRectMake(kScreenWidth-44-5-44, 20, 44, 44);
        deleteButton.imageEdgeInsets =UIEdgeInsetsMake(7, 7, 7, 7);
        deleteButton.tag = 2004;
        UIImage *delImg = [UIImage imageNamed:@"rightBarButton.bundle/images/delete"];
        [deleteButton setImage:delImg forState:UIControlStateNormal];
        [deleteButton addTarget:self action:@selector(deleteButtonAction:) forControlEvents:UIControlEventTouchUpInside];
        [headerView addSubview:deleteButton];
    }
    
    
    
    
}


#pragma mark - 导航栏右边按钮事件
- (void)rightButtonAction:(UIButton *)abutton
{
    [self openRightSideView:@"side"];
    
}

- (void)deleteButtonAction:(UIButton *)abutton
{
    [self openRightSideView:@"delete"];
}


- (void)openRightSideView:(NSString *)message
{
    NSLog(@"原生端点击");
    CDVPluginResult *result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:message];
    [result setKeepCallbackAsBool:YES];
    [self.commandDelegate sendPluginResult:result callbackId:callbackId];
}

@end
