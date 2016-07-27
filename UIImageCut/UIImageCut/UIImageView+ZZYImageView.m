//
//  UIImageView+ZZYImageView.m
//  图片圆角裁剪
//
//  Created by 谢光明 on 16/7/27.
//  Copyright © 2016年 xiegm. All rights reserved.
//

#import "UIImageView+ZZYImageView.h"
#import "UIImage+ZZYCircleImage.h"
#import <UIImageView+WebCache.h>


@implementation UIImageView (ZZYImageView)

-(void)setCircleImage:(NSString *)imageUrl withPlaceholderImage:(NSString *)placeholderImageName
{
    
    UIImage * placeholderImage = [UIImage imageNamed:placeholderImageName];
    
    [self sd_setImageWithURL:[NSURL URLWithString:imageUrl] placeholderImage:placeholderImage completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
       
        self.image = image ? [image circleImage]:[placeholderImage circleImage];
    }];
}

@end
