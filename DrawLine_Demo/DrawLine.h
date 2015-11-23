
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DrawLine : NSObject

+ (void)drawCenter:(UIImageView *)imageView withBeginX:(CGFloat)Bx withBeginY:(CGFloat)By withEndX:(CGFloat)Ex withEndY:(CGFloat)Ey withLineWidth:(CGFloat)width withColorR:(CGFloat)r G:(CGFloat)g B:(CGFloat)b Alpha:(CGFloat)a;

+ (void)drawLineCenter:(UIView *)view withBeginX:(CGFloat)Bx withBeginY:(CGFloat)By withEndX:(CGFloat)Ex withEndY:(CGFloat)Ey withLineWidth:(CGFloat)width withColorR:(CGFloat)r G:(CGFloat)g B:(CGFloat)b Alpha:(CGFloat)a;
    /* param 1 : 画线部位 
     * param 2 : 起始点的X
     * param 3 : 起始点的Y
     * param 4 : 结束点的X
     * param 5 : 结束点得Y
     * param 6 ~ 9 : 线条的颜色和透明度
     */

@end
