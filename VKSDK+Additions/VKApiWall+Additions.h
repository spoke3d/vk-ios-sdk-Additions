//
//  VKApiWall+Additions.h
//  VKGifs
//
//  Created by Dmitry Danilov on 16.04.16.
//  Copyright © 2016 Dmitry Danilov. All rights reserved.
//

#import <VKSdk.h>

typedef enum {
    VKSdkWallFilterAll = 0,
    VKSdkWallFilterSuggests = 1,
    VKSdkWallFilterPostponed = 2,
    VKSdkWallFilterOwner = 3,
    VKSdkWallFilterOthers = 4
} VKSdkWallFilter;

@interface VKApiWall (Additions)

/**
 https://vk.com/dev/wall.get
 @param params Use parameters from description with VK_API prefix
 @return Request for execution
 */
- (VKRequest *)getByOwnerId:(NSInteger)ownerId
                     domain:(NSString *)domain
                     offset:(NSInteger)offset
                      count:(NSInteger)count
                     filter:(VKSdkWallFilter)filter
                   extended:(BOOL)extended
                     fields:(NSArray *)fields;


- (VKRequest *)getByOwnerId:(NSInteger)ownerId
                     domain:(NSString *)domain
                     offset:(NSInteger)offset
                      count:(NSInteger)count;


@end
