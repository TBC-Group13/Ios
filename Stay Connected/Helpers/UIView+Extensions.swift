//
//  UIView+Extensions.swift
//  Stay Connected
//
//  Created by Giorgi Matiashvili on 30.11.24.
// DAMRGVALEBA IT IS!

import UIKit

extension UIView {
    func addRoundedCorners(radius: CGFloat) {
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
    }
}
