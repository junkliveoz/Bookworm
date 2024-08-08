//
//  String-EmptyChecking.swift
//  Bookworm
//
//  Created by Adam Sayer on 9/8/2024.
//

import Foundation

extension String {
    var isReallyEmpty: Bool {
        self.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
}
