//
//  NSDictionary+ObjectForObject.h
//  NSDictionaryOjbectForNSObject
//
//  Created by aeieli on 15/2/1.
//
//
#import <Foundation/Foundation.h>

@interface NSDictionary (ObjectForObject)

- (NSArray *)arrayForKey:(id)defaultName;
- (NSDictionary *)dictionaryForKey:(id)defaultName;
- (NSData *)dataForKey:(id)defaultName;
- (NSInteger)integerForKey:(id)defaultName;
- (float)floatForKey:(id)defaultName;
- (double)doubleForKey:(id)defaultName;
- (BOOL)boolForKey:(id)defaultName;
- (NSURL *)URLForKey:(id)defaultName NS_AVAILABLE(10_6, 4_0);

- (void)setInteger:(NSInteger)value forKey:(id)defaultName;
- (void)setFloat:(float)value forKey:(id)defaultName;
- (void)setDouble:(double)value forKey:(id)defaultName;
- (void)setBool:(BOOL)value forKey:(id)defaultName;
- (void)setURL:(NSURL *)url forKey:(id)defaultName NS_AVAILABLE(10_6, 4_0);

@end
