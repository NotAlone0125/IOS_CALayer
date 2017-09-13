//
//  YYH_GraphView.m
//  YYH_Graph
//
//  Created by 杨昱航 on 2017/6/12.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import "YYH_GraphView.h"

@implementation YYH_GraphView

//-(id)initWithFrame:(CGRect)frame
//{
//    if (self==[super initWithFrame:frame]) {
//        self.frame=frame;
//    }
//    return self;
//}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGContextRef ref=UIGraphicsGetCurrentContext();//拿到当前被准备好的画板
    
    CGContextBeginPath(ref);//告诉画板已经准备好
    
    CGContextMoveToPoint(ref, 10, 10);
    
    CGContextAddLineToPoint(ref, 200, 300);
    
    CGFloat color[4]={1.0,0,0,1.0};
    
    CGContextSetStrokeColor(ref, color);//设置画笔颜色
    
    CGContextStrokePath(ref);//用画笔将路径的颜色填充
}

@end
