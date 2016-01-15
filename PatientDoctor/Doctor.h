//
//  Doctor.h
//  PatientDoctor
//
//  Created by Thiago Heitling on 2016-01-14.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Doctor : NSObject

@property(nonatomic,strong) NSString *name;
@property(nonatomic, strong) NSString *specialization;
@property(nonatomic, strong) NSDictionary *treatmentsForSymptoms;
@property(nonatomic) NSMutableSet *appectedPatients;

- (instancetype)initWithName:(NSString *)name specialization:(NSString *)specialization andTreatmentsForSymptoms:(NSDictionary *)treatmentsForSymptoms;

-(void)acceptPatient:(Patient *)patient;
-(void)giveMedication:(Patient *)patient;

@end
