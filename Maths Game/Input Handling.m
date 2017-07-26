//
//  Input Handling.m
//  Maths Game
//
//  Created by Mohammad Shahzaib Ather on 2017-07-25.
//  Copyright © 2017 Mohammad Shahzaib Ather. All rights reserved.
//

#import "Input Handling.h"

@implementation Input_Handling
    
-(NSString*) inputHandler {
    
    char inputChars[255];
    
    NSString *que = [NSString stringWithCString:inputChars encoding:NSASCIIStringEncoding];
    
    //Asks user to input answer
    
    NSLog(@"Whats your answer?");
    
    fgets(inputChars, 255, stdin);
    
    // Relays back the string to the user
    
    printf("Your answer is %s", inputChars);
    
    que  = [NSString stringWithCString:inputChars encoding:NSASCIIStringEncoding];
    return que;
}
@end
