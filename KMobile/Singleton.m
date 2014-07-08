//
//  Singleton.m
//  KMobile
//
//  Created by itisioslab on 08.07.14.
//  Copyright (c) 2014 Misha_Ruzal_Boris. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

static Singleton *sharedSingleton;

+(void)initialize{
    
    if (self == [Singleton class]){
        sharedSingleton = [[Singleton alloc] init];
    }
}

+(Singleton *)sharedSingleton{
    return sharedSingleton;
}

@end
