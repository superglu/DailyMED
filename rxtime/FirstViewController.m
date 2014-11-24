//
//  FirstViewController.m
//  rxtime
//
//  Created by Zouhair Mahieddine on 11/23/14.
//  Copyright (c) 2014 Zedenem. All rights reserved.
//

#import "FirstViewController.h"
#import "MADayView.h"
#import "MAWeekView.h"

@interface FirstViewController ()
{

}

@property IBOutlet MADayView * dayView;
@property IBOutlet MAWeekView * weekView;

@end

@implementation FirstViewController

- (void)viewDidLoad {
  [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

-(IBAction)clickedWeek:(id)sender
{
    NSLog(@"Clicked Week");
    if(self.weekView.isHidden){
        [self.weekView setHidden:NO];
        [self.dayView setHidden:YES];
    }
}

-(IBAction)clickedDay:(id)sender
{
    NSLog(@"Clicked Day");
    if(self.dayView.isHidden){
        [self.weekView setHidden:YES];
        [self.dayView setHidden:NO];
    }
}

@end
