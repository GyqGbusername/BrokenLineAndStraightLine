

#import "DrawLine.h"


@implementation DrawLine

+ (void)drawCenter:(UIImageView *)imageView withBeginX:(CGFloat)Bx withBeginY:(CGFloat)By withEndX:(CGFloat)Ex withEndY:(CGFloat)Ey withLineWidth:(CGFloat)width withColorR:(CGFloat)r G:(CGFloat)g B:(CGFloat)b Alpha:(CGFloat)a
{
    
    UIGraphicsBeginImageContext(imageView.frame.size);
    [imageView.image drawInRect:CGRectMake(0, 0, imageView.frame.size.width, imageView.frame.size.height)];
    
    
    CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapRound);
    CGContextSetLineWidth(UIGraphicsGetCurrentContext(), width);  //线宽
    CGContextSetAllowsAntialiasing(UIGraphicsGetCurrentContext(), YES);
    CGContextSetRGBStrokeColor(UIGraphicsGetCurrentContext(), r, g, b, a);  //颜色
    CGContextBeginPath(UIGraphicsGetCurrentContext());
    CGContextMoveToPoint(UIGraphicsGetCurrentContext(), Bx, By);  //起点坐标
    CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), Ex, Ey);   //终点坐标
    CGContextStrokePath(UIGraphicsGetCurrentContext());
    imageView.image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
}

+ (void)drawLineCenter:(UIView *)view withBeginX:(CGFloat)Bx withBeginY:(CGFloat)By withEndX:(CGFloat)Ex withEndY:(CGFloat)Ey withLineWidth:(CGFloat)width withColorR:(CGFloat)r G:(CGFloat)g B:(CGFloat)b Alpha:(CGFloat)a
{
    UIImageView *imageView=[[UIImageView alloc] initWithFrame:view.frame];
    [view addSubview:imageView];
    view.backgroundColor = [UIColor clearColor];
    
    UIGraphicsBeginImageContext(imageView.frame.size);
    [imageView.image drawInRect:CGRectMake(0, 0, imageView.frame.size.width, imageView.frame.size.height)];
    
    CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapRound);
    CGContextSetLineWidth(UIGraphicsGetCurrentContext(), width);  //线宽
    CGContextSetAllowsAntialiasing(UIGraphicsGetCurrentContext(), YES);
    CGContextSetRGBStrokeColor(UIGraphicsGetCurrentContext(), r, g, b, a);  //颜色
    CGContextBeginPath(UIGraphicsGetCurrentContext());
    CGContextMoveToPoint(UIGraphicsGetCurrentContext(), Bx, By);  //起点坐标
    CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), Ex, Ey);   //终点坐标
    CGContextStrokePath(UIGraphicsGetCurrentContext());
    imageView.image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
}
@end
