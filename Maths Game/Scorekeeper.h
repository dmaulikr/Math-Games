//
//  Scorekeeper.h
//  Maths Game
//
//  Created by Mohammad Shahzaib Ather on 2017-07-25.
//  Copyright © 2017 Mohammad Shahzaib Ather. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Scorekeeper : NSObject

    @property  NSInteger rightCounter;
    @property  NSInteger wrongCounter;
    
    -(NSNumber *) getScore: (NSInteger)rightNum : (NSInteger)wrongNum ;
@end
