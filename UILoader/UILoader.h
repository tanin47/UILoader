//
//  UILoader.h
//  
//
//  Created by Apirom Na Nakorn on 3/7/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UILoader : NSObject {
	
}

@property (nonatomic, retain) UIView *loadee;
@property (nonatomic, retain) UIView *loadingWidget;

- (id) initWithView: (UIView *) thisView;

- (void) startLoading;
- (void) stopLoading;


@end




