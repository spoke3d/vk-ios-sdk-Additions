//
//  VKApiWall+Additions.m
//  VKGifs
//
//  Created by Dmitry Danilov on 16.04.16.
//  Copyright © 2016 Dmitry Danilov. All rights reserved.
//

#import "VKApiWall+Additions.h"

@implementation VKApiWall (Additions)

- (VKRequest *)getByOwnerId:(NSInteger)ownerId
                     domain:(NSString *)domain
                     offset:(NSInteger)offset
                      count:(NSInteger)count {
    return [self getByOwnerId:ownerId
                       domain:domain
                       offset:offset
                        count:count
                       filter:VKSdkWallFilterAll
                     extended:NO
                       fields:@[]];
}

- (VKRequest *)getByOwnerId:(NSInteger)ownerId
                     domain:(NSString *)domain
                     offset:(NSInteger)offset
                      count:(NSInteger)count
                     filter:(VKSdkWallFilter)filter
                   extended:(BOOL)extended
                     fields:(NSArray *)fields {
    return [self prepareRequestWithMethodName:@"get"
                                   parameters:
            @{
              VK_API_OWNER_ID   : @(ownerId),
              VK_API_DOMAIN     : domain,
              VK_API_COUNT      : @(count),
              VK_API_OFFSET     : @(offset),
              VK_API_FILTER     : [self filterNameForEnum:filter],
              VK_API_EXTENDED   : @(extended),
              VK_API_FIELDS     : fields
              }
                                   modelClass:[VKDocsArray class]];
}


- (NSString *)filterNameForEnum:(VKSdkWallFilter)filter {
    NSString *result = nil;
    switch (filter) {
        case VKSdkWallFilterAll:
            result = @"all";
            break;
        case VKSdkWallFilterSuggests:
            result = @"suggests";
            break;
        case VKSdkWallFilterOthers:
            result = @"others";
            break;
        case VKSdkWallFilterOwner:
            result = @"owner";
            break;
        case VKSdkWallFilterPostponed:
            result = @"postponed";
            break;
        default:
            result = @"";
            break;
    }
    return result;
}

@end
