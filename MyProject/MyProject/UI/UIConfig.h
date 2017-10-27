//
//  UIConfig.h
//  MyProject
//
//  Created by sike on 2016/10/26.
//  Copyright © 2016年 sike. All rights reserved.
//

#ifndef UIConfig_h
#define UIConfig_h

//文字颜色

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define kTabTextColor           UIColorFromRGB(0x666666)//底部标签文字
#define kBGPlaceHolderColor     UIColorFromRGB(0xe0e0e0)//占位图背景色
#define kGrayColor              UIColorFromRGB(0xdedfe0)//分割线颜色、描边、提示字
#define kOrangeColor            UIColorFromRGB(0xf37346)//橙色(提示、警示性文字)
#define kBlueTextColor          UIColorFromRGB(0x00baff)//蓝色文字



//按钮颜色
#define kCommonBtnBGColor           UIColorFromRGB(0x00baff)//蓝色(默认颜色)
#define kCommonBtnTouchedBGColor    UIColorFromRGB(0x5db9ff)//蓝色(点击颜色)
#define kCommonBtnDisableBGColor    UIColorFromRGB(0xb4b4b4)//灰色(禁用颜色)


//字号
#define kCustomFontName         @"Heiti SC"             //黑体SC字体
#define kFangTiLight            @"PingFangSC-Light"     //平方细体
#define kFangTiRegular          @"PingFangSC-Regular"   //平方粗体


#define fontWithSize(v)         [UIFont fontWithName:kCustomFontName size:v]


#define kFont40                 fontWithSize(40)
#define kFont24                 fontWithSize(24)
#define kFont23                 fontWithSize(23)
#define kFont20                 fontWithSize(20)
#define kFont19                 fontWithSize(19)//顶部导航栏标题
#define kFont18                 fontWithSize(18)//大按钮字体
#define kFont17                 fontWithSize(17)//
#define kFont16                 fontWithSize(16)//大多数文字，正文，2级导航及项目名
#define kFont15                 fontWithSize(15)//少数叙述性内容文字
#define kFont14                 fontWithSize(14)//辅助性文字
#define kFont13                 fontWithSize(13)//辅助性文字
#define kFont12                 fontWithSize(12)//底导文字及少数辅助性文字
#define kFont11                 fontWithSize(11)// 引导弹框文字
#define kFont9                  fontWithSize(9) // 广告标签



//基础View坐标值
#define kNavigationBarHeight 44

#define kBaseOriginX 0
#define kBaseOriginY 0
#define kBaseWidth [UIScreen mainScreen].bounds.size.width
#define kBaseHeight [UIScreen mainScreen].bounds.size.height
#define kNavigationBarHeight 44
#define kTabBarHeight 49     //tabBar高度
#define kTopHeight 64        //获得navigation高度


#endif /* UIConfig_h */
