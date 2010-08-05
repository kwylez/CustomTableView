    //
//  RootViewController.m
//  Untitled
//
//  Created by cwiles on 4/28/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"


@implementation RootViewController

@synthesize ds;
@synthesize tblView;

- (void)loadView {
  
  UIView *mainView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
  
  self.view = mainView;
  
  [mainView release];

  UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 55)];
  
  headerView.backgroundColor = [UIColor blueColor];
  
  [self.view addSubview:headerView];
  
  self.tblView = [[UITableView alloc] initWithFrame:CGRectMake(0, headerView.frame.size.height, 320, 300) style:UITableViewStylePlain];

  self.tblView.delegate   = self;
  self.tblView.dataSource = self;
  
  [self.view addSubview:self.tblView];
  
  UIView *footerView = [[UIView alloc] initWithFrame:CGRectMake(0, self.tblView.frame.size.height, 320, 125)];
  
  footerView.backgroundColor = [UIColor redColor];
  
  [self.view addSubview:footerView];

  [footerView release];
  [headerView release];
}

- (void)viewDidLoad {
  
  self.navigationItem.title = @"Custom UITableView";

  self.ds = [NSArray arrayWithObjects:@"Cory Wiles", @"http://www.corywiles.com", @"http://blog.corywiles.com/", nil];
}

- (void)viewWillAppear:(BOOL)animated {
  
  [super viewWillAppear:YES];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
}

- (void)viewDidUnload {
  [super viewDidUnload];
}

- (void)dealloc {
  [ds release];
  [tblView release];
  [super dealloc];
}

#pragma mark -
#pragma mark Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  // Return the number of rows in the section.
  return [ds count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  
  static NSString *CellIdentifier = @"Cell";
  
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];

  if (cell == nil) {
    cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
  }

  cell.textLabel.text = [NSString stringWithFormat:@"%@", [self.ds objectAtIndex:indexPath.row]];
  
  return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  
  [tableView deselectRowAtIndexPath:indexPath animated:YES];
  
  DetailViewController *detail = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
  
  [self.navigationController pushViewController:detail animated:YES];
  
  [detail release];
}

@end
