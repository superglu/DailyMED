//
//  FirstViewController.m
//  rxtime
//
//  Created by Zouhair Mahieddine on 11/23/14.
//  Copyright (c) 2014 Zedenem. All rights reserved.
//

#import "FirstViewController.h"
#import "DayViewExampleController.h"
#import "WeekViewExampleController.h"
@interface FirstViewController ()
{
    DayViewExampleController * dayVC;
    WeekViewExampleController * weekWC;
}

@end

@implementation FirstViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
    dayVC = [[DayViewExampleController alloc] initWithNibName:@"" bundle:[NSBundle mainBundle]];
    
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
