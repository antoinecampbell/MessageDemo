//
//  AppDelegate.m
//  Magical Record Demo
//
//  Created by Antoine Campbell on 4/4/13.
//  Copyright (c) 2013 Antoine Campbell. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
	[MagicalRecord setupCoreDataStackWithAutoMigratingSqliteStoreNamed:@"Messages.sqlite"];
    return YES;
}

-(void)applicationDidEnterBackground:(UIApplication *)application
{
	[[NSManagedObjectContext MR_defaultContext] MR_saveToPersistentStoreAndWait];
}

- (void)applicationWillTerminate:(UIApplication *)application
{
	[MagicalRecord cleanUp];
}

@end
