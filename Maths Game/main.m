//
//  main.m
//  Maths Game
//
//  Created by Mohammad Shahzaib Ather on 2017-07-25.
//  Copyright © 2017 Mohammad Shahzaib Ather. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "Scorekeeper.h"
#import "Input Handling.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
//Creating the score and making sure the counter is zero intially
        
         Scorekeeper *score = [[Scorekeeper alloc] init];

//Creating a Questions Manager instance
        
        
         QuestionManager *questionsManager = [[QuestionManager alloc] init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc]init];
        
        
        do {

         
            
        Question *question = [questionFactory generateRandomQuestion];
  		 [[questionsManager questionsArray] addObject:question];
                    
 
            
//Calling Input Handling Method

            Input_Handling *handle = [[Input_Handling alloc] init];
            NSString *que =  [handle inputHandler];
            
            

//Check answer with correct answer
            
            
            NSInteger answer = [que integerValue];
            
            NSInteger correctAnswer = question.answer;

            if ( answer == correctAnswer) {
                
                NSLog(@"Congratulations you got the right answer!");
            }
            
            else if (answer != correctAnswer) {
                NSLog(@"Sorry , wrong answer!");
            }
            
            
//Scorekeeper Method Call
            
            NSNumber *result = [score getScore:correctAnswer :answer];
         
        
            NSLog(@"The result of the user is %.0f %%", ([result floatValue] * 100));
         
// Displaying the time that has passed after the program has started
            
            double answerTime =  [question totalAnswerTime];
            
            NSLog(@"You took %.2f seconds to answer this question", answerTime);


//Condition which terminates the program
            
            if ([que isEqualToString:@"DONE\n"]){
               // break;
            }
          
  //Calling method which returns string with total time input from user
            
            NSString *stringTimeOutput = [ questionsManager timeOutput ] ;
            
            NSLog(@"The total time the user has taken is %@ seconds", stringTimeOutput);
            
//Calling method which returns double which is the average time user takes from all the question they have answered
            double averageTime = [questionsManager getAverageTime ];
            
            NSLog(@"The average time for the user is %f seconds" , averageTime);
            
            
        } while (YES);
        
        
    }
    return 0;
}
