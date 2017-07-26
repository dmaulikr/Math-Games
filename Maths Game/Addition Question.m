//
//  Addition Question.m
//  Maths Game
//
//  Created by Mohammad Shahzaib Ather on 2017-07-25.
//  Copyright © 2017 Mohammad Shahzaib Ather. All rights reserved.
//

#import "Addition Question.h"

@implementation Addition_Question
  
    
-(instancetype) init {
    if (self = [super init])
    {
        
        NSInteger num1 = arc4random_uniform(100);
        NSInteger num2 = arc4random_uniform(100);
        self.sum = num1 + num2 ;
        
        NSLog(@"Please solve the addition:  %ld + %ld  \n" , (long)num1 ,(long)num2);
        
        
     
    }
    return self;
}
@end
