// Copyright 2015 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

#import "ViewController.h"
@import Client;
@interface ViewController ()
    @property WKWebView *XView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

  
    // launch the webview
    self.XView =  [[WKWebView alloc] initWithFrame:self.view.frame];
    _webView = self.XView;
   
   //  _webView.allow = TRUE;
    self.productURL = @"http://golang.org/";
    NSURL *url = [NSURL URLWithString:self.productURL];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
     [_webView loadRequest:request];
     _webView.frame = CGRectMake(self.view.frame.origin.x,self.view.frame.origin.y, self.view.frame.size.width, self.view.frame.size.height);

    [self.view addSubview:_webView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)applicationDidBecomeActive{
   // [super applicationDidBecomeActive];
      NSLog(@"hi applicationDidBecomeActive from viewCOntroller");
    [super viewDidLoad];
}

@end
