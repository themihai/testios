// Copyright 2015 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

#import "AppDelegate.h"
@import Client;

@interface AppDelegate ()
@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    return YES;
}



- (void)applicationDidBecomeActive:(UIApplication *)application
{

    // Restart any tasks that were paused (or not yet started) while the application was inactive.
    // If the application was previously in the background, optionally refresh the user interface.
    NSLog(@"hi applicationDidBecomeActive");
    ClientStart();
}


- (void)applicationDidLoad:(UIApplication *)application
{

    // Restart any tasks that were paused (or not yet started) while the application was inactive.
    // If the application was previously in the background, optionally refresh the user interface.
    NSLog(@"hi applicationDidLoad blah???");
    //  [super applicationDidBecomeActive:application];
    // Start the server
  
     ClientStart();
   
}

- (void)applicationWillTerminate:(UIApplication *)application
{

    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    NSLog(@"hi applicationWillTerminate");
    ClientStop();
}


- (void)applicationDidEnterBackground:(UIApplication *)application
{

    // Use this method to release shared resources,
    // invalidate timers, and store enough app state
    NSLog(@"hi applicationDidEnterBackground");
    ClientStop();
}



- (void)applicationWillResignActive:(UIApplication *)application
{

    // Use this method to release shared resources,
    // invalidate timers, and store enough app state
    NSLog(@"hi applicationWillResignActive");
    ClientStop();
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{

   // The call to this method is invariably followed by
   // a call to the applicationDidBecomeActive
    NSLog(@"hi applicationWillEnterForeground");
}

@end

