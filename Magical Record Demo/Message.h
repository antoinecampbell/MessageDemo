//
//  Message.h
//  Magical Record Demo
//
//  Created by Antoine Campbell on 4/5/13.
//  Copyright (c) 2013 Antoine Campbell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Message : NSManagedObject

@property (nonatomic, retain) NSString * text;
@property (nonatomic, retain) NSDate * timestamp;
@property (nonatomic, retain) NSString * someOtherAttribute;

@end
