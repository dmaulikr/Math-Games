//
//  Addition-question.m
//  Maths Game
//
//  Created by Mohammad Shahzaib Ather on 2017-07-26.
//  Copyright © 2017 Mohammad Shahzaib Ather. All rights reserved.
//

#import "Addition.h"

@implementation Addition
    
    - (instancetype)init
    {
        self = [super init];
        if (self) {
            [self generateQuestion];
        }
        NSLog(@"Please solve the addition:  %ld + %ld  \n" , (long)self.leftValue ,(long)self.rightValue);

        return self;
    }
    
    
    - (void)generateQuestion {
        
        super.question = [NSString stringWithFormat: @"Addition Question :  %ld + %ld" ,(long)self.leftValue , (long)self.rightValue];
        
        super.answer = super.leftValue + super.rightValue;
    }

@end
