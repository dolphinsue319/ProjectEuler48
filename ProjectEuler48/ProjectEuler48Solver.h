//
//  ProjectEuler48Solver.h
//  ProjectEuler48
//
//  Created by dolphin on 2014/11/1.
//  Copyright (c) 2014年 dolphin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ProjectEuler48Solver : NSObject

- (long)modularWithPoweredNumber:(long)number digits:(long)digits;

- (long)sumEachModularToNumber:(long)number digits:(long)digits;
@end
