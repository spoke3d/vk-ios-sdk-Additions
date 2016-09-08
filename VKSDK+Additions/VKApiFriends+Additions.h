//
//  VKApiFriends+Additions.h
//  VKData
//
//  Created by Dmitry Danilov on 24.04.16.
//  Copyright © 2016 Dmitry Danilov. All rights reserved.
//

#import <VKSdk.h>

@interface VKApiFriends (Additions)

- (VKRequest *)getWithCount:(NSInteger)count
                     offset:(NSInteger)offset
                     fields:(NSArray *)fields;

@end
