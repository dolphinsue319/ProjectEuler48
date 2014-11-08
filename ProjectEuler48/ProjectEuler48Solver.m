//
//  ProjectEuler48Solver.m
//  ProjectEuler48
//
//  Created by dolphin on 2014/11/1.
//  Copyright (c) 2014年 dolphin. All rights reserved.
//

#import "ProjectEuler48Solver.h"

@implementation ProjectEuler48Solver
/* (a*b) % c = ((a % c) * (b % c) )% c */
-(long)modularWithPoweredNumber:(long)number digits:(long)digits {
    long ceiling = (long)pow((double)10, (double)digits);
    long result = 1;

    for (long i = 0; i < number; ++i) {
        result *= number;
        result = result % ceiling;
    }

    return result;
}
/* (a+b) % c = ((a % c) + (b % c) )% c */
-(long)sumEachModularToNumber:(long)number digits:(long)digits{
    long ceiling = (long) pow(10, digits);
    long result = 0;
    NSDate *startDate = [NSDate date];
    for (int i = 1; i <= number; ++i) {
        long oneResult = [self modularWithPoweredNumber:i digits:digits];
        result += oneResult;
        result = result % ceiling;
    }
    NSTimeInterval durationInterval = [[NSDate date] timeIntervalSinceDate:startDate];
    NSLog(@"used time period: %g", durationInterval);
    return result;
}
@end
