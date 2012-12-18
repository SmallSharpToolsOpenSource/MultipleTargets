# Multiple Targets

## Building multiple iOS apps from a single project using multiple targets

### Note: These instructures are for Xcode 4.5.2 and may change in later versions of Xcode.

1. Create a project or start with an existing project
2. View the project settings from Xcode Navigator (click the project icon)
3. Rename the target if you like (Lite, Pro, OEM)
4. Duplicate the target to another and rename it as you choose
5. See there are now multiple .plist files
6. Place the .plist files where you want them and name then appropriately
7. Return to each target and select the related .plist
8. Notice the Project Name does not look as you intended
9. Go to the Build Settings and search for Product Name which you can change
10. Update the Build Identifier under the Summary for each Target to make it unique
11. Notice you only have one Default.png and other resources for all targets but you want unique images
12. Add launch images (Default.png, Default@2x.png) in seperate folders for each Build Target
13. Icons are required to be in the root folder so create them with names specific to each target
14. Add the images to the project in and do not add them to a target yet
15. Organize the images into groups and select a group of files at a time and set the Target Membership using the Utilities view
16. Now go to Build Phases and see Copy Bundle Resources to verify the right files are with each target
17. Search for flags in Build Settings and C Flags and Other C++ Flags
18. Add -DBUILD_TARGET_IDENTIFIER as a flag for both C Flags and Other C++ Flags for Debug and Release (Change BUILD_TARGET_IDENTIFIER appropriately)
19. Ensure that -DNS_BLOCK_ASSERTIONS=1 is still in place for Release
20. Use #ifdef for code specific to a build target
21. Edit schemes, delete all schemes and autocreate them so the titles match your targets
22. See sample code for an example and try running each target

See StackOverflow for tips on working with multiple build targets. That is how I pieced together these details.

### Credits: Brennan Stehling - SmallSharpTools LLC - 2012

### Find me on ADN [@smallsharptools](https://alpha.app.net/smallsharptools) and Twitter [@smallsharpTools](http://twitter.com/smallsharptools)

![Screenshot](https://github.com/brennanMKE/MultipleTargets/blob/master/MultipleTargets.png?raw=true)
