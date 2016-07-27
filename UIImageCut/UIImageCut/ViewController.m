//
//  ViewController.m
//  UIImageCut
//
//  Created by 谢光明 on 16/7/27.
//  Copyright © 2016年 xiegm. All rights reserved.
//

/**
 图片圆角的裁剪优化
 首先说一下这个思路：一般当我们在项目中显示图片的时候，如果想要将正方形的图片转换为原型图片的话，
 我们会想到用layer进行设置，但有时就会有一点点卡(特别是在tableView中进行显示的时候),性能并不好，所以我推荐下面这种。
 
 说一下这种方法的思路:就是给UIImage增加一个类别，通过Quartz2D将图形绘制出一张圆形图片来进行显示。 UIImage (ZZYCircleImage)
 然后我又对UIImageView 进行了封装，写了一个类别:UIImageView (ZZYImageView) 这个是通过url来请求网络图片资源进行显示的。
 
 QQ: 260595314 欢迎交流
 */


#import "ViewController.h"
#import "UIImage+ZZYCircleImage.h"
#import "UIImageView+ZZYImageView.h"

#define imageUrl  @"https://thumbs.dreamstime.com/x/%C4%D1%CC%E2%D5%FD%B7%BD%D0%CE-28239100.jpg"
#define placeUrl  @"https://thumbs.dreamstime.com/x/9%B8%F6%B0%B4%C5%A5%C9%AB%B5%C4%D5%FD%B7%BD%D0%CE-23559374.jpg"

@interface ViewController ()

@property (nonatomic,strong)UIImageView *imgView;
@property (nonatomic,assign)BOOL isChange;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //imgView初始化
    _imgView = [[UIImageView alloc]initWithFrame:CGRectMake(50, 50, 100, 100)];
    [self.view addSubview:_imgView];
    
    //默认是方法1
    [self action1];
    self.isChange = YES;
    
}

// 方法1
-(void)action1
{
    //设置圆形图片
    [_imgView setCircleImage:imageUrl withPlaceholderImage:placeUrl];   //UIImageView的类别
    
}


//方法2
-(void)action2
{
    UIImage *BackImage = [UIImage imageNamed:@"1.png"];
    UIImage *BackImage2 =[BackImage circleImage];
    _imgView.image = BackImage2;
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    if (self.isChange) {
        [self action2];
        self.isChange = !self.isChange;
        
    }else if(!self.isChange)
    {
        [self action1];
        self.isChange = !self.isChange;
    }
    
    
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
