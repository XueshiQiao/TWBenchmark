TWBenchmark
===========
##Introduction
TWBenchmark is a Simple benchmark helper class, you only need to concern what you want to benchmark, the left TWBenchmark will do for you!

##Samples
```
	NSTimeInterval timeUsed = [TWBenchmark benchmark:100000 benchmarkBlock:^{
   		//time-consuming things 
	}];
    
	NSLog(@"==================%f", timeUsed);
```

and 

```
[TWBenchmark benchmark:10000 benchmarkBlocks:@[^{
    
	//one thing

}, ^{
    
	//another thing
    
}] completionBlock:^(NSArray * results) {
    [results enumerateObjectsUsingBlock:^(id timeUsed, NSUInteger idx, BOOL *stop) {
        NSLog(@"task %d uses %@ seconds", idx, timeUsed);
    }];
}];
```


