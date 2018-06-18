//
//  ViewController.m
//  Scroll View Image Galleries
//
//  Created by Will Chew on 2018-06-18.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupScrollView];
    
}

-(void)setupScrollView {
    [self.view addSubview:self.scrollView];
    self.scrollView.delegate = self;
    self.scrollView.translatesAutoresizingMaskIntoConstraints = NO;
    
    //setting scrollview constraints
    [self.scrollView.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = YES;
    [self.scrollView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor].active = YES;
    [self.scrollView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active = YES;
    [self.scrollView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor].active = YES;
    
    self.scrollView.pagingEnabled = YES;
    
    UIImageView *iv1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Lighthouse-zoomed.jpg"]];
    iv1.clipsToBounds = YES;
    iv1.contentMode = UIViewContentModeScaleAspectFill;
    iv1.userInteractionEnabled = YES;
    iv1.tag = 1;
    
    UIImageView *iv2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Lighthouse-night.jpg"]];
    iv2.clipsToBounds = YES;
    iv2.contentMode = UIViewContentModeScaleAspectFill;
    iv2.userInteractionEnabled = YES;
    iv2.tag = 2;
    
    UIImageView *iv3 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Lighthouse-in-Field.jpg"]];
    iv3.clipsToBounds = YES;
    iv3.contentMode = UIViewContentModeScaleAspectFill;
    iv3.userInteractionEnabled = YES;
    iv3.tag = 3;
    
    [self.scrollView addSubview:iv1];
    iv1.translatesAutoresizingMaskIntoConstraints = NO;
    [self.scrollView addSubview:iv2];
    iv2.translatesAutoresizingMaskIntoConstraints = NO;
    [self.scrollView addSubview:iv3];
    iv3.translatesAutoresizingMaskIntoConstraints = NO;
    
    //Size constraints
    [iv1.heightAnchor constraintEqualToAnchor:self.scrollView.heightAnchor].active = YES;
    [iv1.widthAnchor constraintEqualToAnchor:self.scrollView.widthAnchor].active = YES;
    
    //iv1 constraints
    [iv1.topAnchor constraintEqualToAnchor:self.scrollView.topAnchor].active = YES;
    [iv1.leadingAnchor constraintEqualToAnchor:self.scrollView.leadingAnchor].active = YES;
    [iv1.bottomAnchor constraintEqualToAnchor:self.scrollView.bottomAnchor].active = YES;
    [iv1.trailingAnchor constraintEqualToAnchor:iv2.leadingAnchor].active = YES;
    
    //iv2 size constraints
    [iv2.heightAnchor constraintEqualToAnchor:self.scrollView.heightAnchor].active = YES;
    [iv2.widthAnchor constraintEqualToAnchor:self.scrollView.widthAnchor].active = YES;
    
    //iv2 constraints
    [iv2.topAnchor constraintEqualToAnchor:self.scrollView.topAnchor].active = YES;
    [iv2.bottomAnchor constraintEqualToAnchor:self.scrollView.bottomAnchor].active = YES;
    [iv2.leadingAnchor constraintEqualToAnchor:iv1.trailingAnchor].active = YES;
    [iv2.trailingAnchor constraintEqualToAnchor:iv3.leadingAnchor].active = YES;
    
    //iv3 size constraints
    [iv3.widthAnchor constraintEqualToAnchor:self.scrollView.widthAnchor];
    [iv3.heightAnchor constraintEqualToAnchor:self.scrollView.heightAnchor];
    
    //iv3 constraints
    [iv3.topAnchor constraintEqualToAnchor:self.scrollView.topAnchor].active = YES;
    [iv3.bottomAnchor constraintEqualToAnchor:self.scrollView.bottomAnchor].active = YES;
    [iv3.leadingAnchor constraintEqualToAnchor:iv2.trailingAnchor].active = YES;
    [iv3.trailingAnchor constraintEqualToAnchor:self.scrollView.trailingAnchor].active = YES;
    
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(screenTapped:)];
    [iv1 addGestureRecognizer:tapGesture];
    [iv2 addGestureRecognizer:tapGesture];
    [iv3 addGestureRecognizer:tapGesture];
    [self.scrollView addGestureRecognizer:tapGesture];
    
}

-(void)screenTapped:(UIGestureRecognizer*)sender {
    [self performSegueWithIdentifier:@"galleryToDetail" sender:sender.view];
    [self prepareForSegue:<#(nonnull UIStoryboardSegue *)#> sender:<#(nullable id)#>]
  
}

//-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    SecondViewController *svc = (SecondViewController*)segue.destinationViewController;
//    NSLog(@"%@", segue.identifier);
//    [segue.destinationViewController setView:self.view];
//
//}

//- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
//    if (self.scrollView.contentOffset.x == 0) {
//        NSLog(@"1");
//        [self performSegueWithIdentifier:@"galleryToDetail" sender:self];
//
//    }
//    if (self.scrollView.contentOffset.x == 414) {
//        [self performSegueWithIdentifier:@"galleryToDetail" sender:self];
//        NSLog(@"2");
//    }
//    else if (self.scrollView.contentOffset.x >= 828){
//        [self performSegueWithIdentifier:@"galleryToDetail" sender:self];
//        NSLog(@"3");
//    }
//}


//- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
//    NSLog(@"Line: %d, function : %s", __LINE__, __PRETTY_FUNCTION__);
//
//}

//- (void)scrollViewDidChangeAdjustedContentInset:(UIScrollView *)scrollView {
//    NSLog(@"Line: %d, function : %s", __LINE__, __PRETTY_FUNCTION__);
//
//}



@end
