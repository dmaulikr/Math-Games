//
//  Multiplication.m
//  Maths Game
//
//  Created by Mohammad Shahzaib Ather on 2017-07-26.
//  Copyright © 2017 Mohammad Shahzaib Ather. All rights reserved.
//

#import "Multiplication.h"

@implementation Multiplication

    - (instancetype)init
    {
        self = [super init];
        if (self) {
            [self generateQuestion];
        }
        NSLog(@"Please solve the multiplication:  %ld * %ld  \n" , (long)self.leftValue ,(long)self.rightValue);
        
        return self;
    }
    
    
    
    -(void) generateQuestion {
        self.question = [NSString stringWithFormat: @"Addition Question :  %ld * %ld" ,(long)self.leftValue , (long)self.rightValue];
        
        self.answer = self.leftValue * self.rightValue;

    }
@end
