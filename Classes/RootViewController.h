//
//  RootViewController.h
//  uitableviewloader
//
//  Created by Apirom Na Nakorn on 3/7/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UILoader.h"

@interface RootViewController : UIViewController {

}

@property (nonatomic, retain) IBOutlet UITableView *tableView;
@property (nonatomic, retain) UILoader *tableViewLoader;

@end
