//
//  CICThemeModel.h
//  zhihudailyAPI
//
//  Created by im61 on 14-9-7.
//  Copyright (c) 2014年 6133studio.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CICThemeModel : NSObject

@property (nonatomic, strong) NSString *color;
@property (nonatomic, strong) NSString *themeID;
@property (nonatomic, strong) NSString *image;
@property (nonatomic, strong) NSString *desc;
@property (nonatomic, strong) NSString *name;

- (instancetype)initWithDictionary:(NSDictionary *)dict;
@end
