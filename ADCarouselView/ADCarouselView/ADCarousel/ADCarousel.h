//
//  Ad_AutoView.h
//  ScrollView-HeaderAuto
//
//  Created by 邓岚锋 on 15/10/12.
//  Copyright © 2015年 邓岚锋. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ADCarouselDelegate ;

@interface ADCarousel : UIView

@property(nonatomic,assign)NSInteger currentPage;
@property(nonatomic,strong)NSMutableArray *imageArray;
@property(nonatomic,readonly,strong)UIScrollView *scrollView;
@property(nonatomic,readonly,strong)UIPageControl *pageControl;
@property(nonatomic,assign)NSInteger timeInterval;
@property(nonatomic,assign)id <ADCarouselDelegate>delegate;
@property(nonatomic,assign)BOOL isAutoScroll; //是否开启自动轮播
@end
//协议
@protocol ADCarouselDelegate <NSObject>

@optional
- (void)didClickPage:(ADCarousel *)view atIndex:(NSInteger)index;

@end