//
//  NSArray+Safe.m
//  ztjyyd
//
//  Created by ChaohuiChen on 12/01/2017.
//  Copyright © 2017 szy. All rights reserved.
//

#import "NSArray+Safe.h"

@implementation NSArray (Safe)
+ (BOOL)isValid:(NSArray *)arr {
    if (nil!=arr && [arr isKindOfClass:[NSArray class]]) {
        return YES;
    }
    
    return NO;
}

+ (BOOL)isValid:(NSArray *)arr index:(NSUInteger)index {
    if ([NSArray isValid:arr] && index < arr.count) {
        return YES;
    }
    
    return NO;
}

- (id)safeObjectAtIndex:(NSUInteger)index {
    if (![NSArray isValid:self index:index]) {
        return nil;
    }
    
    return [self objectAtIndex:index];
}

@end

@implementation NSMutableArray (Safe)
- (void)safeAddObject:(id)anObject {
    if (anObject) {
        [self addObject:anObject];
    }
}

- (void)safeRemoveObject:(id)anObject {
    if (anObject) {
        [self removeObject:anObject];
    }
}

- (void)safeRemoveObjectAtIndex:(NSUInteger)index {
    if (![NSArray isValid:self index:index]) {
        return;
    }
    
    [self removeObjectAtIndex:index];
}

- (void)safeInsertObject:(id)anObject atIndex:(NSUInteger)index {
    if (![NSArray isValid:self index:index] || !anObject) {
        return;
    }
    
    [self insertObject:anObject atIndex:index];
}

- (void)safeReplaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject {
    if (![NSArray isValid:self index:index] || !anObject) {
        return;
    }
    
    [self replaceObjectAtIndex:index withObject:anObject];
}

- (void)safeInsertOrAddObject:(id)anObject atIndex:(NSUInteger)index {
    if (!anObject) {
        return;
    }
    
    if ([NSArray isValid:self index:index]) {
        [self insertObject:anObject atIndex:index];
    } else if ([NSArray isValid:self]) {
        [self addObject:anObject];
    }
    
}

- (instancetype)initWithObjectsCapacity:(NSUInteger)numItems {
    if (self = [self initWithCapacity:numItems]) {
        for (NSInteger i = 0; i < numItems; i++) {
            [self addObject:[NSObject new]];
        }
    }
    
    return self;
}

@end
