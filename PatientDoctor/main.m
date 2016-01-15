//
//  main.m
//  PatientDoctor
//
//  Created by Thiago Heitling on 2016-01-14.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSDictionary *treatmentsForSymptoms1 = @{@"headache":@"aspirine", @"stomachache":@"xyz pills"};
        Doctor *doc1 = [[Doctor alloc] initWithName:@"Paul" specialization:@"family doctor" andTreatmentsForSymptoms:treatmentsForSymptoms1];
        
        NSDictionary *treatmentsForSymptoms2 = @{@"headache":@"tylenol", @"stomachache":@"vit-D pills"};
        Doctor *doc2 = [[Doctor alloc] initWithName:@"Marc" specialization:@"neuro" andTreatmentsForSymptoms:treatmentsForSymptoms2];
        
        NSSet *symptoms1 = [NSSet setWithArray:@[@"headache"]];
        Patient *patient1 = [[Patient alloc] initWithName:@"Adrian" age:30 hasValidHealthCard:YES andSymptoms:symptoms1];
        
        NSSet *symptoms2 = [NSSet setWithArray:@[@"stomachache"]];
        Patient *patient2 = [[Patient alloc] initWithName:@"Roy" age:40 hasValidHealthCard:NO andSymptoms:symptoms2];
    
        //patient1 visits all doctors
        [patient1 visitDoctor:doc1];
        [patient1 visitDoctor:doc2];
        
        //patient1 try to get treatments from all doctors
        [doc1 giveMedication:patient1];
        [doc2 giveMedication:patient1];
    
        //patient2 try to get treatments from all doctors
        [doc1 giveMedication:patient2];
        [doc2 giveMedication:patient2];
    
        //patient2 visits all doctors after didnt succed to receive any tratment from doctors
        [patient2 visitDoctor:doc1];
        [patient2 visitDoctor:doc2];
        
        //patient2 try again to get treatments from all doctors after registration
        [doc1 giveMedication:patient2];
        [doc2 giveMedication:patient2];
        
    }
    
    return 0;
}
