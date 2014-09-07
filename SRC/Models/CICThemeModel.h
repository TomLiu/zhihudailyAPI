//
//  CICThemeModel.h
//  zhihudailyAPI
//
//  Created by im61 on 14-9-7.
//  Copyright (c) 2014年 6133studio.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CICThemeModel : NSObject

@property (nonatomic, readonly, copy) NSNumber *themeID;
@property (nonatomic, readonly, copy) NSString *color;
@property (nonatomic, readonly, copy) NSString *image;
@property (nonatomic, readonly, copy) NSString *desc;
@property (nonatomic, readonly, copy) NSString *name;

- (instancetype)initWithDictionary:(NSDictionary *)dict;
@end
