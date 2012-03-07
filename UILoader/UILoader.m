//
//  UILoader.m
//  uitableviewwithloading
//
//  Created by Apirom Na Nakorn on 3/7/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "UILoader.h"


@implementation UILoader


@synthesize loadee;
@synthesize loadingWidget;


- (id) initWithView: (UIView *) thisView
{
	if (self = [super init]) {
		self.loadee = thisView;
	}
	
	return self;
}


- (void) startLoading
{
	self.loadee.hidden = YES;
	
	self.loadingWidget = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.loadee.frame.size.width, self.loadee.frame.size.height)];
	self.loadingWidget.backgroundColor = [UIColor clearColor];
	self.loadingWidget.opaque = NO;
	
	UIActivityIndicatorView* loading = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
	
	CGRect loadingIconFrame = loading.frame;
	loadingIconFrame.origin.x = 0.5 * (self.loadingWidget.frame.size.width - loadingIconFrame.size.width);
	loadingIconFrame.origin.y = 0.5 * (self.loadingWidget.frame.size.height - loadingIconFrame.size.height);
	loading.frame = loadingIconFrame;
	
	[self.loadingWidget addSubview:loading];
	[loading startAnimating];
	[loading release];
	
	[self.loadee.superview addSubview:self.loadingWidget];
}


- (void) stopLoading
{
	[self.loadingWidget removeFromSuperview];
	self.loadingWidget = nil;
	
	self.loadee.hidden = NO;
}


- (void) dealloc
{
	self.loadee = nil;
	self.loadingWidget = nil;
	[super dealloc];
}


@end

