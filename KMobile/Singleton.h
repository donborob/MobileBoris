//
//  Singleton.h
//  KMobile
//
//  Created by itisioslab on 08.07.14.
//  Copyright (c) 2014 Misha_Ruzal_Boris. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singleton : NSObject
+(Singleton *)sharedSingleton;
@property (strong, nonatomic) NSArray *rating;
@end
