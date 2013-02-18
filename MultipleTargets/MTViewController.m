//
//  MTViewController.m
//  MultipleTargets
//
//  Created by Brennan Stehling on 12/17/12.
//  Copyright (c) 2012 SmallSharpTools LLC. All rights reserved.
//

#import "MTViewController.h"

@interface MTViewController ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation MTViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
#ifdef MULTIPLE_TARGETS_LITE
    self.titleLabel.text = @"Multiple Targets Lite";
#endif

#ifdef MULTIPLE_TARGETS_PRO
    self.titleLabel.text = @"Multiple Targets Pro";
#endif

#ifdef MULTIPLE_TARGETS_OEM
    self.titleLabel.text = @"Multiple Targets OEM";
#endif

}

@end
