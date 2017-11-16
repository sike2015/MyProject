//
//  ZTMessageADMoudle.h
//  MyProject
//
//  Created by 孝禹苏 on 2017/11/10.
//  Copyright © 2017年 sike. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ZTSpaceInfo:NSObject

@property (nonatomic,strong) NSString *uid;
@property (nonatomic,strong) NSString *type;
@property (nonatomic,assign) NSInteger width;
@property (nonatomic,assign) NSInteger height;
@property (nonatomic,strong) NSString *adCount;
@property (nonatomic,strong) NSString *appType;
@property (nonatomic) BOOL limitEnable;
@property (nonatomic,strong) NSString *limitSum;
@property (nonatomic,strong) NSString *limitFreq;
@property (nonatomic) BOOL showCount;
@property (nonatomic) BOOL showSkip;
@property (nonatomic,strong) NSString *showMaxTime;
@property (nonatomic,strong) NSArray *platforms;

@end



@interface Interact:NSObject
@property (nonatomic,strong) NSString *action;
@property (nonatomic,strong) NSString *openMode;
@property (nonatomic,strong) NSString *deepLink;
@end

@interface ZTAdList:NSObject
@property (nonatomic,strong) NSString *playtime;
@property (nonatomic,strong) NSString *platform;
@property (nonatomic,strong) NSString *data;
@property (nonatomic,strong) NSString *activityId;
@property (nonatomic,strong) NSString *advertId;
@property (nonatomic,strong) NSString *isOperate;
@property (nonatomic,strong) NSString *isZtjy;
@property (nonatomic,strong) NSString *materialType;
@property (nonatomic,strong) NSString *shelfLife;
@property (nonatomic,strong) NSString *sourceMark;
@property (nonatomic,strong) Interact *interact;
@end

@interface ZTMessageADBody:NSObject

@property (nonatomic,strong) NSArray <ZTAdList *> *adList;
@property (nonatomic,strong) ZTSpaceInfo *spaceInfo;

@end;


@interface ZTMessageADMoudle : NSObject
@property (nonatomic) NSInteger returncode;
@property (nonatomic,strong) NSString *message;
@property (nonatomic,strong) ZTMessageADBody *body;
@end
