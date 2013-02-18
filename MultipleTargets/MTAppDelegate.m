//
//  MTAppDelegate.m
//  MultipleTargets
//
//  Created by Brennan Stehling on 12/17/12.
//  Copyright (c) 2012 SmallSharpTools LLC. All rights reserved.
//

#import "MTAppDelegate.h"

@implementation MTAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    // Access the Info Dictionary (*-Info.plist) for the Bundle Identifier
    NSString *bundleIdentifier = [[[NSBundle mainBundle] infoDictionary] objectForKey:(NSString *)kCFBundleIdentifierKey];
    NSLog(@"Bundle Identifier: %@", bundleIdentifier);
    
    // Ensure the proper flags are set with the selected target
    
#ifdef MULTIPLE_TARGETS_LITE
    NSAssert([@"com.smallsharptools.Lite.MT-Lite" isEqualToString:bundleIdentifier], @"Bundle Identifier does not match C Flag");
#endif
    
#ifdef MULTIPLE_TARGETS_PRO
    NSAssert([@"com.smallsharptools.Pro.MT-Pro" isEqualToString:bundleIdentifier], @"Bundle Identifier does not match C Flag");
#endif
    
#ifdef MULTIPLE_TARGETS_OEM
    NSAssert([@"com.smallsharptools.OEM.MT-OEM" isEqualToString:bundleIdentifier], @"Bundle Identifier does not match C Flag");
#endif
    
    return YES;
}

@end
