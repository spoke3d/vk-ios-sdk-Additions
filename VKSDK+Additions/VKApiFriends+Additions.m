//
//  VKApiFriends+Additions.m
//  VKData
//
//  Created by Dmitry Danilov on 24.04.16.
//  Copyright © 2016 Dmitry Danilov. All rights reserved.
//

#import "VKApiFriends+Additions.h"

@implementation VKApiFriends (Additions)

- (VKRequest *)getWithCount:(NSInteger)count
                     offset:(NSInteger)offset
                     fields:(NSArray *)fields {
    NSString *mStringFields = [fields componentsJoinedByString:@","];
    return [self prepareRequestWithMethodName:@"get"
                                   parameters:
            @{
              VK_API_COUNT      : @(count),
              VK_API_OFFSET     : @(offset),
              VK_API_FIELDS     : mStringFields
              }
                                   modelClass:[VKApiFriends class]];
}

@end
