//
//  Addition Question.h
//  Maths Game
//
//  Created by Mohammad Shahzaib Ather on 2017-07-25.
//  Copyright © 2017 Mohammad Shahzaib Ather. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

    
    @property (nonatomic ,copy) NSString *question;
    @property (nonatomic) NSInteger answer; 
    @property (nonatomic ,assign) NSInteger sum;
    @property (nonatomic ,strong) NSDate* startTime;
    @property (nonatomic ,strong) NSDate* endTime;
    @property (nonatomic ,assign) NSInteger rightValue;
    @property (nonatomic ,assign) NSInteger leftValue;
    

    -(NSTimeInterval) totalAnswerTime;
    
    -(void)generateQuestion;
  
@end
