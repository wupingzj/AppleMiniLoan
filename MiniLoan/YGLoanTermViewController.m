//
//  YGLoanTermViewController.m
//  MiniLoan
//
//  Created by Ping on 30/03/14.
//  Copyright (c) 2014 Yang Ltd. All rights reserved.
//

#import "YGLoanTermViewController.h"
#import "YGLoanTerm.h"

@interface YGLoanTermViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation YGLoanTermViewController
{
    NSArray *tableData;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
//    tableData = [NSArray arrayWithObjects:@"15 days", @"30 days", @"60 days", @"90 days", @"180 days", @"360 days", nil];
    tableData = [[YGLoanTerm sharedInstance] loanTerms];
    
    
    NSIndexPath *idxPath = [NSIndexPath indexPathForRow:[self.loanTerm intValue] inSection:0];
    
    [self.tableView selectRowAtIndexPath:idxPath animated:YES scrollPosition:UITableViewScrollPositionMiddle];
    
    UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:idxPath];
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    
    NSLog(@"loan term view loaded. Term=%@ ", self.loanTerm);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
#pragma mark * Table view callbacks
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    assert(tableView != nil);
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    #pragma unused(tableView)
    #pragma unused(section)
    
    // Return the number of rows in the section.
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *loanTermItemID = @"LoanTermItemID";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:loanTermItemID forIndexPath:indexPath];
    
    // Configure the cell...
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:loanTermItemID];
    }
    
    //cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    cell.textLabel.text = tableData[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tv didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    #pragma unused(tv)
    NSUInteger section;
    NSUInteger row;
    UITableViewCell *cellToSet = nil;
    UITableViewCell *cellToClear = nil;
    
    assert(tv == self.tableView);
    assert(indexPath != nil);
    
    section = indexPath.section;
    row = indexPath.row;
    

    
    NSIndexPath *currentIdxPath = [NSIndexPath indexPathForRow:[self.loanTerm intValue] inSection:section];
    cellToClear = [tv cellForRowAtIndexPath:currentIdxPath];
    cellToClear.accessoryType = UITableViewCellAccessoryNone;
    
    cellToSet   = [tv cellForRowAtIndexPath:indexPath];
    cellToSet.accessoryType = UITableViewCellAccessoryCheckmark;
    
    self.loanTerm = [NSNumber numberWithInteger:row];
    
    [self.loanTermDelegate loanTermVCDidFinish:self];
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
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
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

@end
