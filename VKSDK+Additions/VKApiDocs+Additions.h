//
//  VKDocs+Additions.h
//  VKGifs
//
//  Created by Dmitry Danilov on 09.04.16.
//  Copyright © 2016 Dmitry Danilov. All rights reserved.
//

#import <VKSdk.h>

@interface VKApiDocs (Additions)

- (VKRequest *)search:(NSString *)searchString
                count:(NSInteger)count
               offset:(NSInteger)offset;

@end
