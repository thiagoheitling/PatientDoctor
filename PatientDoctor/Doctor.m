//
//  Doctor.m
//  PatientDoctor
//
//  Created by Thiago Heitling on 2016-01-14.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (instancetype)initWithName:(NSString *)name specialization:(NSString *)specialization andTreatmentsForSymptoms:(NSDictionary *)treatmentsForSymptoms
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        _treatmentsForSymptoms = treatmentsForSymptoms;
        _appectedPatients = [NSMutableSet set];
    }
    return self;
}

-(void)acceptPatient:(Patient *)patient {
    
    if(patient.hasValidHealthCard) {
        
        [self.appectedPatients addObject:patient];
        NSLog(@"Patient %@ accepted by doctor %@ and added to his/her patient list.", patient.name, self.name);
    
    }
    
    else {
        
        NSLog(@"%@ not accepted by Doctor %@ because he/she doesn't have a valid health card.", patient.name, self.name);
    
    }
}

-(void)giveMedication:(Patient *)patient {
    
    if(![self.appectedPatients containsObject:patient]) {
        
        NSLog(@"Patient %@ cannot receive medication as he/she is not in the patient list of Doctor %@.", patient.name, self.name);
        
    }
    
    else {
        
        NSMutableSet *treatments = [NSMutableSet set];
        
        for (NSString *symptom in patient.symptoms) {
            
            [treatments addObject:self.treatmentsForSymptoms[symptom]];
        
        }
        
        // Add set of new treatments to be taken by patient to the set of treatments that have already been taken by patient
        
        [patient.treatmentsTaken unionSet:treatments];
        
        NSLog(@"Doctor %@ prescribed to patient %@: %@", self.name, patient.name, treatments);
        
    }
    
}


@end
