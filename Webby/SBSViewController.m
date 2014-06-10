//
//  SBSViewController.m
//  Webby
//
//  Created by David Groulx on 6/10/14.
//  Copyright (c) 2014 David Groulx. All rights reserved.
//

#import "SBSViewController.h"

@interface SBSViewController ()

@property (weak, nonatomic) IBOutlet UIWebView *webby;

@end

@implementation SBSViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated {
  [super viewWillAppear:animated];
  
  NSURLRequest *joinRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://workthefactory.com/membership/"]];
  [self.webby loadRequest:joinRequest];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
