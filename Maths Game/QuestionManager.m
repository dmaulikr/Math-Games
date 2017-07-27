//
//  QuestionManager.m
//  Maths Game
//
//  Created by Mohammad Shahzaib Ather on 2017-07-26.
//  Copyright © 2017 Mohammad Shahzaib Ather. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager

    - (instancetype)init
    {
        self = [super init];
        if (self) {
           
            self.questionsArray =[[ NSMutableArray alloc ] init];
        }
        return self;
    }

    -(NSString*) timeOutput {
        
        NSTimeInterval totalTime = 0;
       
        for (int i = 0; i < self.questionsArray.count; i++) {
            Question * aQuestion = self.questionsArray[i];
            NSTimeInterval interval = aQuestion.totalAnswerTime;
            totalTime += interval;
            }
        
        NSString *totalTimeString = [NSString stringWithFormat:@"%f", totalTime];
        
        return totalTimeString;
    }

    -(double) getAverageTime {
        
        NSTimeInterval totalTime = 0;
        
        for (int i = 0; i < self.questionsArray.count; i++) {
            Question * aQuestion = self.questionsArray[i];
            NSTimeInterval interval = aQuestion.totalAnswerTime;
            totalTime += interval;
        }

        
        double calculatedTotalTime =  totalTime / self.questionsArray.count ;
        
        return calculatedTotalTime;
        
    }
    
@end
