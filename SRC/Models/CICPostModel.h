//
//  CICPostModel.h
//  Cicada
//
//  Created by 61 on 14-5-15.
//  Copyright (c) 2014年 6133studio.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CICPostModel : NSObject

@property (nonatomic, strong) NSString *date;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *shareURL;
@property (nonatomic, strong) NSString *gaPrefix;
@property (nonatomic, strong) NSArray *images;
@property (nonatomic, strong) NSString *postID;
@property (nonatomic, assign) NSInteger type;

- (id)initWithDictionary:(NSDictionary *)dict;
@end
