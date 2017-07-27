//
//  Addition Question.m
//  Maths Game
//
//  Created by Mohammad Shahzaib Ather on 2017-07-25.
//  Copyright © 2017 Mohammad Shahzaib Ather. All rights reserved.
//

#import "Question.h"

@implementation Question
  
    
-(instancetype) init {
    
    if (self = [super init])
    {
        
        NSInteger num1 = arc4random_uniform(100);
        NSInteger num2 = arc4random_uniform(100);
        self.leftValue = num1;
        self.rightValue = num2;
        self.startTime = [NSDate date];
     
    }
    

    return self;
}
   
-(NSInteger)answer{
        self.endTime = [NSDate date];
        return _answer;
    }
 
-(NSTimeInterval) totalAnswerTime {
    NSTimeInterval timeSinceStart = [_endTime timeIntervalSinceDate:_startTime];
    return timeSinceStart;
    }
    

- (void)generateQuestion {
    return;
}
    
    
@end
