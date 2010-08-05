//
//  UntitledAppDelegate.m
//  Untitled
//
//  Created by cwiles on 4/28/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "UntitledAppDelegate.h"

@implementation UntitledAppDelegate

@synthesize window;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    

  RootViewController *rootViewController       = [[RootViewController alloc] init];
  UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:rootViewController];
  
  [window addSubview:[navigationController view]];
  
  [rootViewController release];
  
  [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
