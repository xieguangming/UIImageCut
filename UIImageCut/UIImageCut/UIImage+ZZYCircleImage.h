//
//  UIImage+ZZYCircleImage.h
//  图片圆角裁剪
//
//  Created by 谢光明 on 16/7/27.
//  Copyright © 2016年 xiegm. All rights reserved.
//

#import <UIKit/UIKit.h>

/*＊
 方法1:
 正方形图片的圆角化，大家首先就会想到使用layer进行设置,
 当然这种方法可以实现，有时就会有一点点卡(特别是在tableView中进行显示的时候)
===================================================================/
 方法2:使用Quartz2D画图
*/

@interface UIImage (ZZYCircleImage)

-(UIImage *)circleImage;

@end
