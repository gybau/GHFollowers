//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Michał Ganiebny on 25/01/2023.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        return formatted(.dateTime.month().year().locale(Locale(identifier: "en_US")))
    }
}
