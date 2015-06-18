//
//  FISPrimeTimeTableViewController.h
//  PrimeTime
//
//  Created by Amitai Blickstein on 6/18/15.
//  Copyright (c) 2015 FIS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FISPrimeTimeTableViewController : UITableViewController
//@property (nonatomic, strong) NSMutableArray *primesList;

-(BOOL)isPrime:(NSUInteger)numberToTest;
-(NSUInteger)primeNumber:(NSUInteger)nthPrime;

@end
