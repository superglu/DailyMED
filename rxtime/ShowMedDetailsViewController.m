//
//  ShowMedDetailsViewController.m
//  rxtime
//
//  Created by Govindaraj, Prashanth on 11/23/14.
//  Copyright (c) 2014 Zedenem. All rights reserved.
//

#import "ShowMedDetailsViewController.h"

@interface ShowMedDetailsViewController ()
@property (weak, nonatomic) IBOutlet UILabel *medName;
@property (weak, nonatomic) IBOutlet UILabel *medQuantity;
@property (weak, nonatomic) IBOutlet UILabel *medDescription;

@property (strong, nonatomic) NSArray *medNameArray;
@property (strong, nonatomic) NSArray *medDescriptionArray;

@property (strong, nonatomic) NSMutableArray *medDataArray;

//Model

@property (strong, nonatomic) NSString *m_Name;
@property (strong, nonatomic) NSNumber *m_Quantity;
@property (strong, nonatomic) NSString *m_Description;
@property (strong, nonatomic) NSDate *m_date;

@end

@implementation ShowMedDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _medNameArray = @[@"Abarelix (Plenaxis)", @"Adefovir Dipivoxil (Hepsera)", @"Amoxicillin Clavulanate Potassium", @"azathioprine (Azasan)", @"Azelex (Azelaic Acid Cream)", @"Azithromycin (Zmax)", @"Azopt", @"Azulfidine EN-Tabs"];
    _medDescriptionArray = @[@"Take one tablet every 6 hours by mouth", @"Take one tablet every 12 hours by mouth", @"Take one tablet every 4 hours by mouth", @"Take one tablet every 4 hours by mouth", @"Take one tablet every 12 hours by mouth", @"Take one tablet every 6 hours by mouth", @"Take one tablet every 6 hours by mouth", @"Take one tablet every 8 hours by mouth"];
    
    [self generateMedData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addMedication:(id)sender {
    
}


- (void)generateMedData {
    _medDataArray = [[NSMutableArray alloc] init];
    
    for (int i = 0 ; i < _medDescriptionArray.count; i++) {
        
        _m_Name = [_medNameArray objectAtIndex:i];
        _m_Description = [_medDescriptionArray objectAtIndex:i];
        int random = [self randomNumberGen];
        _m_Quantity = [NSNumber numberWithInt:random];
        _m_date = [NSDate date];
        
        [_medDataArray addObject:@{@"name" : _m_Name,
                                   @"description" : _m_Description,
                                   @"quantity" : _m_Quantity,
                                   @"date" : _m_date }];
    }
    
    NSLog (@"%@",_medDataArray[1][@"description"]);
}

- (int)randomNumberGen {
    int r = arc4random_uniform(30);
    return r;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
