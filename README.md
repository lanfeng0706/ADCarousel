# ADCarousel
图片轮播

##使用方法
  1.设置轮播图切换时间
 
    timeInterval属性，默认设置为2秒
    
  2.是否开启自动轮播
 
    isAutoScroll属性, YES表示开启
  3.代理事件
  
    -(void)didClickPage:(ADCarousel *)view atIndex:(NSInteger)index
