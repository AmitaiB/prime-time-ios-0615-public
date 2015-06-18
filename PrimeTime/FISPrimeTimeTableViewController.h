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

-(NSUInteger)primeNumber:(NSUInteger)nthPrime;
-(NSMutableArray*)generatePrimesListToNthPrime:(NSUInteger)nth;
-(BOOL)isPrime:(NSUInteger)numberToTest;

@end
