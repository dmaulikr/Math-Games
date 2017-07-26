//
//  Scorekeeper.m
//  Maths Game
//
//  Created by Mohammad Shahzaib Ather on 2017-07-25.
//  Copyright © 2017 Mohammad Shahzaib Ather. All rights reserved.
//

#import "Scorekeeper.h"

@implementation Scorekeeper
    
-(instancetype)init {
    if (self = [super init]){
        _rightCounter = 0;
        _wrongCounter = 0;
    }
    return self;
}
 
    
 
-(NSNumber *) getScore: (NSInteger)correctAnswer : (NSInteger)answer {
    
    if (correctAnswer == answer ){
        self.rightCounter += 1;
    }
    else if (correctAnswer != answer){
        self.wrongCounter +=1;
    }
    NSInteger total = _rightCounter + _wrongCounter;
    float resultRatio =((float)_rightCounter / (float)total);

    return [NSNumber numberWithFloat:resultRatio];
}
   
 
      
    
@end
