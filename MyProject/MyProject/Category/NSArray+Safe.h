//
//  NSArray+Safe.h
//  ztjyyd
//
//  Created by ChaohuiChen on 12/01/2017.
//  Copyright © 2017 szy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Safe)
+ (BOOL)isValid:(NSArray *)arr;

+ (BOOL)isValid:(NSArray *)arr index:(NSUInteger)index;

- (id)safeObjectAtIndex:(NSUInteger)index ;
@end


@interface NSMutableArray (Safe)
- (void)safeAddObject:(id)anObject ;

- (void)safeRemoveObject:(id)anObject ;

- (void)safeRemoveObjectAtIndex:(NSUInteger)index ;

- (void)safeInsertObject:(id)anObject atIndex:(NSUInteger)index ;

- (void)safeReplaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject;

- (void)safeInsertOrAddObject:(id)anObject atIndex:(NSUInteger)index;
- (instancetype)initWithObjectsCapacity:(NSUInteger)numItems;

@end
