//
//  Patient.m
//  PatientDoctor
//
//  Created by Thiago Heitling on 2016-01-14.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (instancetype)initWithName:(NSString *)name age:(int)age hasValidHealthCard:(BOOL)hasValidHealthCard andSymptoms:(NSSet *)symptoms {
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _hasValidHealthCard = hasValidHealthCard;
        _symptoms = symptoms;
        _treatmentsTaken = [NSMutableSet set];
    }
    return self;
}

-(void)visitDoctor:(Doctor *)doctor {
    [doctor acceptPatient:self];
}

@end
