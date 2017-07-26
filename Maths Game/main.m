//
//  main.m
//  Maths Game
//
//  Created by Mohammad Shahzaib Ather on 2017-07-25.
//  Copyright © 2017 Mohammad Shahzaib Ather. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Addition Question.h"
#import "Scorekeeper.h"
#import "Input Handling.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
//Creating the score and making sure the counter is zero intially
        
        Scorekeeper *score = [[Scorekeeper alloc] init];

        
        do {

            Addition_Question *question = [[Addition_Question alloc] init];

            
//Calling Input Handling Method

            Input_Handling *handle = [[Input_Handling alloc] init];
            NSString *que =  [handle inputHandler];
            
            

            
//Condition which terminates the program
         
            if ([que isEqualToString:@"DONE\n"]){
                break;
            }
            
//Check answer with correct answer
            
            
            NSInteger answer = [que integerValue];
            
            NSInteger correctAnswer = question.sum;

            if ( answer == correctAnswer) {
                
                NSLog(@"Congratulations you got the right answer!");
            }
            
            else if (answer != correctAnswer) {
                NSLog(@"Sorry , wrong answer!");
            }
//Scorekeeper Method Call
            
            NSNumber *result = [score getScore:correctAnswer :answer];
         
        
            NSLog(@"The result of the user is %.0f %%", ([result floatValue] * 100));
            
        } while (YES);
        
        
    }
    return 0;
}
