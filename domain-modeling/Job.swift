//
//  Job.swift
//  domain-modeling
//
//  Created by Bruce Ng on 10/14/15.
//  Copyright © 2015 Bruce Ng. All rights reserved.
//

import Foundation

class Job {
    let jobTitle : String?
    let jobSalary : Int?
    let jobType : String?
    
    init(title : String?, salary : Int?, type : String?) {
        jobTitle = title
        jobSalary = salary
        jobType = type
    }
    
    func calculateIncome(hours : Int?) -> Int{
        if (jobSalary != nil && jobTitle != nil && hours != nil && jobType != nil) {
            if jobType == "hourly" {
                return jobSalary! * hours!
            } else if jobType == "yearly" {
                return jobSalary!
            } else {
                return 1
            }
        } else {
            print("Unable to Calculate Income since one property is nil")
            return 1
        }
     }
    
    func raise(percent : Int?) -> Double {
        if (jobSalary != nil && percent != nil && jobType != nil && jobTitle != nil) {
            let multiplier = (Double(percent!) / 100.0) + 1.0
            return Double(jobSalary!) * multiplier
        } else {
            print("Unable to Calculate Raise since one property is nil")
            return 0.0
        }
    }
}