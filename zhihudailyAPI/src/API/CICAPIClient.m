//
//  CICAPIClient.m
//  Cicada
//
//  Created by 61 on 1/28/14.
//  Copyright (c) 2014 6133studio.com. All rights reserved.
//

static NSString * const KCICBaseURL = @"http://news-at.zhihu.com/api/2/";

#import "CICAPIClient.h"
#import "AFHTTPClient.h"
#import "CICPostModel.h"
#import "CICPostContentModel.h"

@interface CICAPIClient ()
@property (nonatomic, strong) AFHTTPClient *httpClient;
@end

@implementation CICAPIClient

+ (instancetype)sharedClient
{
    static CICAPIClient *_sharedClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedClient = [[CICAPIClient alloc] init];
    });
    
    return _sharedClient;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _httpClient = [AFHTTPClient clientWithBaseURL:[NSURL URLWithString:KCICBaseURL]];
    }
    
    return self;
}

- (void)getLatestPostsSuccess:(void (^)(NSString *date, NSArray *posts))success
                      failure:(void (^)(NSError *error))failure
{
    [_httpClient getPath:@"news/latest"
              parameters:nil
                 success:^(AFHTTPRequestOperation *operation, id responseObject)
    {
        NSError *error;
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:responseObject
                                                             options:NSJSONReadingMutableContainers
                                                               error:&error];
        if (error && failure) {
            failure(error);
            return;
        }
        
        NSString *date = dict[@"date"];
        NSString *displayDate = dict[@"display_date"];
        
        NSMutableArray *postsArray = dict[@"news"];
        NSMutableArray *posts = [NSMutableArray array];
        
        for (NSDictionary *postDict in postsArray) {
            NSMutableDictionary *postDictCopy = [postDict mutableCopy];
            postDictCopy[@"date"] = date;
            postDictCopy[@"display_date"] = displayDate;

            CICPostModel *post = [[CICPostModel alloc] initWithDictionary:postDictCopy];
            [posts addObject:post];
        }
        
        if (success) {
            success(date, posts);
        }
    }
                 failure:^(AFHTTPRequestOperation *operation, NSError *error)
    {
        if (error && failure) {
            failure(error);
        }
    }];
}

- (void)getPostsBefore:(NSString *)date
               success:(void (^)(NSString *date, NSArray *posts))success
               failure:(void (^)(NSError *error))failure
{
    NSMutableString *path = [@"news/before/" mutableCopy];

    if (date) {
        [path appendString:date];
    }
    
    [_httpClient getPath:path
              parameters:nil
                 success:^(AFHTTPRequestOperation *operation, id responseObject)
     {
         NSError *error;
         NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:responseObject
                                                              options:NSJSONReadingMutableContainers
                                                                error:&error];
         
         if (error && failure) {
             failure(error);
             return;
         }
         
         NSString *date = dict[@"date"];
         NSString *displayDate = dict[@"display_date"];
         
         NSMutableArray *postsArray = dict[@"news"];
         NSMutableArray *posts = [NSMutableArray array];
         
         for (NSDictionary *postDict in postsArray) {
             NSMutableDictionary *postDictCopy = [postDict mutableCopy];
             postDictCopy[@"date"] = date;
             postDictCopy[@"display_date"] = displayDate;
             
             CICPostModel *post = [[CICPostModel alloc] initWithDictionary:postDictCopy];
             [posts addObject:post];
         }
         
         if (success) {
             success(date, posts);
         }
     }
                 failure:^(AFHTTPRequestOperation *operation, NSError *error)
     {
         if (error && failure) {
             failure(error);
         }
     }];
}

- (void)getPostContentByID:(NSString *)postID
                   success:(void (^)(CICPostContentModel *content))success
                   failure:(void (^)(NSError *error))failure
{
    NSString *path = [NSString stringWithFormat:@"news/%@", postID];
    
    [_httpClient getPath:path
              parameters:nil
                 success:^(AFHTTPRequestOperation *operation, id responseObject)
     {
         NSError *error;
         NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:responseObject
                                                              options:NSJSONReadingMutableContainers
                                                                error:&error];
         
         if (error && failure) {
             failure(error);
             return;
         }
         
         CICPostContentModel *content = [[CICPostContentModel alloc] init];
         content.body = dict[@"body"];
         content.css = [dict[@"css"] lastObject];
         
         if (success) {
             success(content);
         }
     } failure:^(AFHTTPRequestOperation *operation, NSError *error)
     {
         if (error && failure) {
             failure(error);
         }
     }];
}
@end
