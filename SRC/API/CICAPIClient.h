//
//  CICAPIClient.h
//  Cicada
//
//  Created by 61 on 1/28/14.
//  Copyright (c) 2014 6133studio.com. All rights reserved.
//

#import <Foundation/Foundation.h>
@class CICPostContentModel;

@interface CICAPIClient : NSObject

+ (instancetype)sharedClient;
    
- (void)getLatestPostsSuccess:(void (^)(NSString *date, NSArray *posts))success
                      failure:(void (^)(NSError *error))failure;

- (void)getPostsBefore:(NSString *)date
               success:(void (^)(NSString *date, NSArray *posts))success
               failure:(void (^)(NSError *error))failure;

- (void)getPostContentByID:(NSString *)postID
                   success:(void (^)(CICPostContentModel *content))success
                   failure:(void (^)(NSError *error))failure;

- (void)getThemesSuccess:(void (^)(NSArray *themes))success
                 failure:(void (^)(NSError *error))failure;

- (void)getPostsByThemeID:(NSString *)themeID
                  success:(void (^)(NSArray *posts))success
                  failure:(void (^)(NSError *error))failure;

- (void)getThemePosts:(NSString *)themeID
               before:(NSString *)postID
              success:(void (^)(NSArray *posts))success
              failure:(void (^)(NSError *error))failure;
@end
