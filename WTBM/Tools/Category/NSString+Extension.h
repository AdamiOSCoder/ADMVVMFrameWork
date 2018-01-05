
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface NSString (Extension)<NSCoding>

/**
 *  计算文本占用的宽高
 *  @param string 计算的字体
 *  @param font 显示的字体
 *
 *  @return 占用的宽高
 */
+ (CGSize)sizeWithStr:(NSString *)str Withfont:(UIFont*)font WithCGSize:(CGSize )CGsize;

/**
 *  去空格
 *
 *  @param str_    需要处理的字符串
 */
+ (NSString*)trim:(NSString*)str_;

/**
 *  时间格式化
 *
 *  @param times    需要处理的字符串
 */
+(NSString*)strChangeTime:(NSString*)times;



/**
 *  获取当前时间
 *
 *  
 */
+(NSString *)getCurrentTime;

@end
