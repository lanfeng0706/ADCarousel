//
//  ViewController.m
//  ADCarouselView
//
//  Created by 邓岚锋 on 15/10/13.
//  Copyright © 2015年 邓岚锋. All rights reserved.
//

#import "ViewController.h"
#import "ADCarousel.h"

@interface ViewController () <ADCarouselDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blackColor];
    
    ADCarousel *ADCarouselView = [[ADCarousel alloc]initWithFrame:CGRectMake(0, 44, self.view.frame.size.width, 200)];
    ADCarouselView.delegate = self;
    ADCarouselView.timeInterval = 2.0f;
    ADCarouselView.isAutoScroll = YES;
    
    NSMutableArray *imageArray = [NSMutableArray array];
    for (int i = 1; i <= 5; i++) {
        UIImageView *imageView = [[UIImageView alloc]init];
        imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"image-%d",i]];
        [imageArray addObject:imageView];
    }
    ADCarouselView.imageArray = imageArray;
    [self.view addSubview:ADCarouselView];
    

    // Do any additional setup after loading the view, typically from a nib.
}
#pragma mark - ADCarouselDelegate
-(void)didClickPage:(ADCarousel *)view atIndex:(NSInteger)index
{
    NSLog(@"%lu",index);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
