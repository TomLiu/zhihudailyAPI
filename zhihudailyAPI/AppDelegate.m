//
//  AppDelegate.m
//  zhihudailyAPI
//
//  Created by Tom on 14-5-19.
//  Copyright (c) 2014年 6133studio.com. All rights reserved.
//

#import "AppDelegate.h"
#import "CICAPIClient.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    [[CICAPIClient sharedClient] getPostsByThemeID:@"8" success:^(NSArray *posts) {
        NSLog(@"%@", posts);
    } failure:^(NSError *error) {
        
    }];
}
@end
