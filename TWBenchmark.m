//
//  TWBenchmark.m
//
//  Created by Joey on 14-5-28.
//
//

#import "TWBenchmark.h"

@implementation TWBenchmark

+ (NSTimeInterval)benchmarkBlock:(TWBenchmarkBlock)benchmarkBlock {
    return [self benchmark:1 benchmarkBlock:benchmarkBlock];
}

+ (NSTimeInterval)benchmark:(NSInteger)count benchmarkBlock:(TWBenchmarkBlock)benchmarkBlock {
    NSDate *begin = [NSDate date];
    for (int i = 0; i < count; i++) {
        benchmarkBlock();
    }
    return [[NSDate date] timeIntervalSinceDate:begin];
}

+ (void)benchmark:(NSInteger)count benchmarkBlocks:(NSArray *)blocks completionBlock:(TWBenchmarkResultBlock)completionBlock {
    if ([blocks count] > 0) {
        NSMutableArray *results = [NSMutableArray arrayWithCapacity:[blocks count]];
        for (TWBenchmarkBlock block in blocks) {
            [results addObject:@([self benchmark:count benchmarkBlock:block])];
        }
        
        if (completionBlock) {
            completionBlock(results);
        }
    }
}

@end
