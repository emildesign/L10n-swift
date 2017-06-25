//
//  Double+l10n.swift
//  L10n
//
//  Created by Adrian Bobrowski on 08.05.2017.
//  Copyright © 2017 Adrian Bobrowski (Decybel07), adrian071993@gmail.com. All rights reserved.
//

extension Double: Localizable {

    /**
     Returns a localized **self** description value.

     - returns: A localized **self** description value.
     */
    public func l10n() -> String {
        return (self as NSNumber).l10n()
    }

    /**
     Returns a localized **self** description value with defined number of fractionDigits.

     - parameter fractionDigits: The number of fraction digits.

     - returns: A localized **self** description value with defined number of fractionDigits.
     */
    public func l10n(fractionDigits: Int) -> String {
        let formatter = NumberFormatter()
        formatter.locale = L10n.shared.locale
        formatter.minimumIntegerDigits = 1
        formatter.minimumFractionDigits = fractionDigits
        formatter.maximumFractionDigits = fractionDigits
        return formatter.string(from: self as NSNumber)!
    }
}
