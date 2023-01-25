//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Michał Ganiebny on 25/01/2023.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter           = DateFormatter()
        dateFormatter.locale        = Locale(identifier: "en_US")
        dateFormatter.dateFormat    = "MMMM yyyy"
        
        
        return dateFormatter.string(from: self)
    }
}
