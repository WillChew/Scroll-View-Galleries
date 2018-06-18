//
//  SecondViewController.m
//  Scroll View Image Galleries
//
//  Created by Will Chew on 2018-06-18.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import "SecondViewController.h"


@interface SecondViewController () <UIScrollViewDelegate>

@property (nonatomic, weak) UIScrollView *scrollView;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupScrollView];
}

-(void)setupScrollView {
    UIScrollView *sv = [[UIScrollView alloc]init];
    sv.delegate = self;
    sv.pagingEnabled = YES;
    [self.view addSubview:sv];
    self.scrollView = sv;
    sv.translatesAutoresizingMaskIntoConstraints = NO;
    
    [sv.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = YES;
    [sv.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor].active = YES;
    [sv.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active = YES;
    [sv.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor].active = YES;
    
    UIImageView *imageView = [[UIImageView alloc]init];
    
    imageView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.scrollView addSubview:imageView];
    
    [imageView.topAnchor constraintEqualToAnchor:self.scrollView.topAnchor].active = YES;
    [imageView.bottomAnchor constraintEqualToAnchor:self.scrollView.bottomAnchor].active = YES;
    [imageView.leadingAnchor constraintEqualToAnchor:self.scrollView.leadingAnchor].active = YES;
    [imageView.trailingAnchor constraintEqualToAnchor:self.scrollView.trailingAnchor].active = YES;
}

-(void)setupZooming {
    
}
-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    
}
@end
