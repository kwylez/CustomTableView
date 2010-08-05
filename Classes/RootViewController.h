//
//  RootViewController.h
//  Untitled
//
//  Created by cwiles on 4/28/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"

@interface RootViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {

  NSArray *ds;
  UITableView *tblView;
}

@property (nonatomic, retain) NSArray *ds;
@property (nonatomic, retain) UITableView *tblView;

@end
