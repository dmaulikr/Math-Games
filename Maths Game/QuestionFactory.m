//
//  QuestionFactory.m
//  Maths Game
//
//  Created by Mohammad Shahzaib Ather on 2017-07-26.
//  Copyright © 2017 Mohammad Shahzaib Ather. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

    -(Question*) generateRandomQuestion {
        
        NSArray *questionSubclassNames = @[@"Addition",@"Subraction", @"Multiplication" , @"Division"];
 
        NSInteger randomIndexUsedForString = arc4random_uniform(3);
    
        
        NSString *randomQuestionThatWasGenerated = [questionSubclassNames objectAtIndex:randomIndexUsedForString];
        
       
        
        
        Question *randomQuestion = [[NSClassFromString(randomQuestionThatWasGenerated) alloc]init];
        
        return randomQuestion;
        
    }

    
    @end
