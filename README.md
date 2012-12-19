# Multiple Targets

## Building multiple iOS apps from a single project using multiple targets

Often apps are sold in the App Store and after making some money the app maker decides that they would like
to use the [Freemium model](http://en.wikipedia.org/wiki/Freemium) to boost their user base but disable some
features which can be activated with in-app purchase or to simply purchase the paid app instead. A popular model
used most often with games is to tell items used in the app which users will purchase as regular intervals to
generate revenue continually instead of a single point of revenue when the app is purchased.

There are also white label apps which an OEM would purchase with potentially different features than the free
or premium version. You can see lots of canned apps in the App Store which service a specific organization or
brand which have identical features to other apps. Several companies sell white label apps in this way.

This sample project shows how you can support multiple apps from a single Xcode project so that you do not have
to mess with branching or copying source files around to keep things current. You will always have the current
code base with each app and can push out updates to every app for bug fixes or performance improvements with
minimal effort. But to do so you will need to understand how to set up multiple build targets, manage assets 
which are unique to each target (launch images, icons), unique code paths and the application identifier used
for code signing and the product name as well. The list of instructions below show how that is done along with
a sample project for a Lite, Pro and EOM target which illustrates how this is done.

Please try to recreate this sample project with 3 targets so that you understand it before you attempt to do it
with a live project. I also strongly encourage you to experiment with changes like these in a new branch for
your code base in case you run into trouble. It can be difficult to get every setting just right. And if you feel
these instructions could be more clear please contact me on ADN or Twitter with my contact information below.

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
