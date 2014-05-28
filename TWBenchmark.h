//
//  TWBenchmark.h
//
//  Created by Joey on 14-5-28.
//
//

#import <Foundation/Foundation.h>

typedef void(^TWBenchmarkBlock)();
typedef void(^TWBenchmarkResultBlock)(NSArray*);


@interface TWBenchmark : NSObject

+ (NSTimeInterval)benchmarkBlock:(void(^)())benchmarkBlock;

+ (NSTimeInterval)benchmark:(NSInteger)count benchmarkBlock:(void(^)())benchmarkBlock;

+ (void)benchmark:(NSInteger)count benchmarkBlocks:(NSArray *)blocks completionBlock:(TWBenchmarkResultBlock)completionBlock;
@end
