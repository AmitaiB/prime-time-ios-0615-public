//
//  FISPrimeTimeTableViewController.m
//  PrimeTime
//
//  Created by Amitai Blickstein on 6/18/15.
//  Copyright (c) 2015 FIS. All rights reserved.
//

#import "FISPrimeTimeTableViewController.h"

@interface FISPrimeTimeTableViewController ()

@end

@implementation FISPrimeTimeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.accessibilityLabel = @"table";
    self.tableView.accessibilityIdentifier = @"table";
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
//    self.primesList = [self generatePrimesListToNthPrime:100];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 100;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"primeCell" forIndexPath:indexPath];

    
    NSUInteger nthPrime = [self primeNumber:indexPath.row +1];

    cell.textLabel.text = [NSString stringWithFormat:@"%lu", (unsigned long)nthPrime];
    
    // Configure the cell...
    
    return cell;
}

#pragma mark Helper Functions

-(NSUInteger)primeNumber:(NSUInteger)nthPrime {
    self.primesList = [self generatePrimesArrayToNthPrime:nthPrime];
    return [[self.primesList lastObject] integerValue];
}

-(NSMutableArray*)generatePrimesArrayToNthPrime:(NSUInteger)nth {
    
    NSMutableArray *localPrimesList = [NSMutableArray arrayWithArray:@[@2]];
    NSUInteger possiblePrime = 2;
     while ([localPrimesList count] <= nth) {
        if ([self isPrime:possiblePrime]) {
            [localPrimesList addObject:@(possiblePrime)];
        }
        possiblePrime++;
    }
    return localPrimesList;

}


-(BOOL)isPrime:(NSUInteger)numberToTest {
    NSUInteger idx = 2;
    while (idx <= sqrtl(numberToTest)) {
        if (numberToTest % idx == 0) {
            return NO;
        }
        idx++;
    }
    return YES;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
