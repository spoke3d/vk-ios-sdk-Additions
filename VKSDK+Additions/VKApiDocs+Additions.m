//
//  VKDocs+Additions.m
//  VKGifs
//
//  Created by Dmitry Danilov on 09.04.16.
//  Copyright © 2016 Dmitry Danilov. All rights reserved.
//

#import "VKApiDocs+Additions.h"

@implementation VKApiDocs (Additions)

- (VKRequest *)search:(NSString *)searchString
                count:(NSInteger)count
               offset:(NSInteger)offset {
    return [self prepareRequestWithMethodName:@"search"
                                   parameters:
            @{
              VK_API_Q          : searchString,
              VK_API_COUNT      : @(count),
              VK_API_OFFSET     : @(offset),
              }
                                   modelClass:[VKDocsArray class]];
}

@end
