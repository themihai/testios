// Copyright 2015 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>


@interface ViewController : UIViewController

@property(strong,nonatomic) WKWebView *webView;
@property (strong, nonatomic) NSString *productURL;

@end
