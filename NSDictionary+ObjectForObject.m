//
//  NSDictionary+ObjectForObject.m
//  NSDictionaryOjbectForNSObject
//
//  Created by aeieli on 15/2/1.
//
//

#import "NSDictionary+ObjectForObject.h"

@implementation NSDictionary (ObjectForObject)

-(NSArray *)arrayForKey:(id)defaultName{
    id array = [self valueForKey:defaultName];
    if ([array isEqual:[NSNull null]]) {
        return @[];
    }
    if ([array isKindOfClass:[NSArray class]]) {
        return [NSArray arrayWithArray:array];
    }
    return @[];
}

-(NSDictionary *)dictionaryForKey:(id)defaultName{
    id value = [self objectForKey:defaultName];
    if ([value isEqual:[NSNull null]]) {
        return @{};
    }
    if ([value isKindOfClass:[NSDictionary class]]) {
        return [NSDictionary dictionaryWithDictionary:value];
    }
    return @{};
}

-(NSData *)dataForKey:(id)defaultName{
    id value = [self objectForKey:defaultName];
    if ([value isEqual:[NSNull null]]) {
        return [NSData data];
    }
    if ([value isKindOfClass:[NSData class]]) {
        return (NSData *)value;
    }
    return [NSData data];
}

-(NSInteger )integerForKey:(id)defaultName{
    id value = [self objectForKey:defaultName];
    if ([value isEqual:[NSNull null]]) {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]]) {
        return [value integerValue];
    }
    return 0;
}

-(float)floatForKey:(id)defaultName{
    id value = [self objectForKey:defaultName];
    if ([value isEqual:[NSNull null]]) {
        return 0.0;
    }
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]]) {
        return [value floatValue];
    }
    return 0.0;
}

-(double)doubleForKey:(id)defaultName{
    id value = [self objectForKey:defaultName];
    if ([value isEqual:[NSNull null]]) {
        return (double) 0.0;
    }
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]]) {
        return [value doubleValue];
    }
    return (double) 0.0;
}

-(BOOL)boolForKey:(id)defaultName{
    id value = [self objectForKey:defaultName];
    if ([value isEqual:[NSNull null]]) {
        return NO;
    }
    if (value) {
        return YES;
    }
    return NO;
}

-(NSURL *)URLForKey:(id)defaultName{
    id value = [self objectForKey:defaultName];
    if ([value isEqual:[NSNull null]]) {
        return [[NSURL alloc]initWithString:@""];
    }
    if ([value isKindOfClass:[NSURL class]]) {
        return value;
    }
    if ([value isKindOfClass:[NSString class]]) {
        return [NSURL URLWithString:value];
    }
    return [[NSURL alloc]initWithString:@""];
}

-(void)setInteger:(NSInteger)value forKey:(id)defaultName{
    [self setValue:[NSNumber numberWithInteger:value] forKey:defaultName];
}

-(void)setFloat:(float)value forKey:(id)defaultName{
    [self setValue:[NSNumber numberWithFloat:value] forKey:defaultName];
}

-(void)setDouble:(double)value forKey:(id)defaultName{
    [self setValue:[NSNumber numberWithDouble:value] forKey:defaultName];
}

-(void)setBool:(BOOL)value forKey:(id)defaultName{
    [self setValue:[NSNumber numberWithBool:value] forKey:defaultName];
}

-(void)setURL:(NSURL *)url forKey:(id)defaultName{
    [self setValue:url forKey:defaultName];
}

@end
