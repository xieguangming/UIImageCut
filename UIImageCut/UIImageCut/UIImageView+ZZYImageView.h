//
//  UIImageView+ZZYImageView.h
//  图片圆角裁剪
//
//  Created by 谢光明 on 16/7/27.
//  Copyright © 2016年 xiegm. All rights reserved.
//

#import <UIKit/UIKit.h>
/*扩展－SDWebImage的简单封装*/

@interface UIImageView (ZZYImageView)

- (void)setCircleImage:(NSString *)imageUrl withPlaceholderImage:(NSString *)placeholderImageName;



@end
