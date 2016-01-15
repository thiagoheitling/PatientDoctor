//
//  Patient.h
//  PatientDoctor
//
//  Created by Thiago Heitling on 2016-01-14.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;

@interface Patient : NSObject

@property(nonatomic, strong) NSString *name;
@property(nonatomic, assign) int age;
@property(nonatomic, assign) BOOL hasValidHealthCard;
@property(nonatomic, strong) NSSet *symptoms;
@property(nonatomic, strong) NSMutableSet *treatmentsTaken;

- (instancetype)initWithName:(NSString *)name age:(int)age hasValidHealthCard:(BOOL)hasValidHealthCard andSymptoms:(NSSet *)symptoms;

-(void)visitDoctor:(Doctor*)doctor;

@end
