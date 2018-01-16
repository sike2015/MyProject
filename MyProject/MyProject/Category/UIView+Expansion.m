//
//  UIView+Expand.m
//  MyProject
//
//  Created by sike on 2016/11/4.
//  Copyright © 2016年 sike. All rights reserved.
//

#import "UIView+Expansion.h"

@implementation UIView (Expansion)
// Retrieve and set the origin
- (CGPoint) origin
{
    return self.frame.origin;
}

- (void) setOrigin: (CGPoint) aPoint
{
    CGRect newframe = self.frame;
    newframe.origin = aPoint;
    self.frame = newframe;
}


// Retrieve and set the size
- (CGSize) size
{
    return self.frame.size;
}

- (void) setSize: (CGSize) aSize
{
    CGRect newframe = self.frame;
    newframe.size = aSize;
    self.frame = newframe;
}

// Query other frame locations
- (CGPoint) bottomRight
{
    CGFloat x = self.frame.origin.x + self.frame.size.width;
    CGFloat y = self.frame.origin.y + self.frame.size.height;
    return CGPointMake(x, y);
}

- (CGPoint) bottomLeft
{
    CGFloat x = self.frame.origin.x;
    CGFloat y = self.frame.origin.y + self.frame.size.height;
    return CGPointMake(x, y);
}

- (CGPoint) topRight
{
    CGFloat x = self.frame.origin.x + self.frame.size.width;
    CGFloat y = self.frame.origin.y;
    return CGPointMake(x, y);
}


// Retrieve and set height, width, top, bottom, left, right
- (CGFloat) height
{
    return self.frame.size.height;
}

- (void) setHeight: (CGFloat) newheight
{
    CGRect newframe = self.frame;
    newframe.size.height = newheight;
    self.frame = newframe;
}

- (CGFloat) width
{
    return self.frame.size.width;
}

- (void) setWidth: (CGFloat) newwidth
{
    CGRect newframe = self.frame;
    newframe.size.width = newwidth;
    self.frame = newframe;
}

- (CGFloat) top
{
    return self.frame.origin.y;
}

- (void) setTop: (CGFloat) newtop
{
    CGRect newframe = self.frame;
    newframe.origin.y = newtop;
    self.frame = newframe;
}

- (CGFloat) left
{
    return self.frame.origin.x;
}

- (void) setLeft: (CGFloat) newleft
{
    CGRect newframe = self.frame;
    newframe.origin.x = newleft;
    self.frame = newframe;
}

- (CGFloat) bottom
{
    return self.frame.origin.y + self.frame.size.height;
}

- (void) setBottom: (CGFloat) newbottom
{
    CGRect newframe = self.frame;
    newframe.origin.y = newbottom - self.frame.size.height;
    self.frame = newframe;
}

- (CGFloat) right
{
    return self.frame.origin.x + self.frame.size.width;
}

- (void) setRight: (CGFloat) newright
{
    CGFloat delta = newright - (self.frame.origin.x + self.frame.size.width);
    CGRect newframe = self.frame;
    newframe.origin.x += delta ;
    self.frame = newframe;
}

// Move via offset
- (void) moveBy: (CGPoint) delta
{
    CGPoint newcenter = self.center;
    newcenter.x += delta.x;
    newcenter.y += delta.y;
    self.center = newcenter;
}

// Scaling
- (void) scaleBy: (CGFloat) scaleFactor
{
    CGRect newframe = self.frame;
    newframe.size.width *= scaleFactor;
    newframe.size.height *= scaleFactor;
    self.frame = newframe;
}

// Ensure that both dimensions fit within the given size by scaling down
- (void) fitInSize: (CGSize) aSize
{
    CGFloat scale;
    CGRect newframe = self.frame;
    
    if (newframe.size.height && (newframe.size.height > aSize.height))
    {
        scale = aSize.height / newframe.size.height;
        newframe.size.width *= scale;
        newframe.size.height *= scale;
    }
    
    if (newframe.size.width && (newframe.size.width >= aSize.width))
    {
        scale = aSize.width / newframe.size.width;
        newframe.size.width *= scale;
        newframe.size.height *= scale;
    }
    
    self.frame = newframe;	
}

- (UIViewController *)viewController
{
    UIResponder *next = self.nextResponder;
    do {
        if ([next isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)next;
            break;
        }
        next = next.nextResponder;
        
    } while (next!=nil);
    
    return nil;
}

//使用默认加载失败图片
-(void)userConfigView:(NSString *)imageName showName:(NSString *)showName ReloadButtonBlock:(void(^)(id sender))block{
    
    //初始化BlankView
    BlankView *blankView = [[BlankView alloc]initWithFrame:self.bounds];
    [self addSubview:blankView];
    
    [blankView configView:showName showName:showName ReloadButtonBlock:block];
    
 
    
}


@end


@implementation BlankView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor clearColor];
        
        
    }
    return self;
}


- (void)configView:(NSString *)imageName showName:(NSString *)showName ReloadButtonBlock:(void(^)(id sender))block{
    
    //默认图片
    UIImageView *showImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"表情_傻了"]];
    showImageView.userInteractionEnabled = YES;
    showImageView.center = self.center;
    [self addSubview:showImageView];
    
    //增加点击事件
    UITapGestureRecognizer *tapImgGesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(userOnClick) ];
    [showImageView addGestureRecognizer:tapImgGesture];
    
    //显示的文字
    UILabel *showTextLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, kBaseWidth, 20) ];
    showTextLabel.userInteractionEnabled = YES;
    showTextLabel.text = showName;
    showTextLabel.center = CGPointMake(self.center.x, showImageView.bottom+20);
    showTextLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:showTextLabel];
    
    
    //增加点击事件
    UITapGestureRecognizer *tapLalGesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(userOnClick) ];
    [showTextLabel addGestureRecognizer:tapLalGesture];
    
    _reloadButtonBlock = block;
    

    
}



- (void)userOnClick{
    //预先移除 之前View
    [[self subviews]makeObjectsPerformSelector:@selector(removeFromSuperview) ];
    
    if (_reloadButtonBlock) {
        _reloadButtonBlock(self);
        
        DLog(@"self:%@",self);
    }
    
}




@end
