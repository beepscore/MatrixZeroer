//
//  Cell.swift
//  MatrixZeroer
//
//  Created by Steve Baker on 5/20/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import Foundation

/// Hashable so it can be used in a set
/// http://stackoverflow.com/questions/41972319/make-struct-hashable
public class Cell: NSObject {
    var row: Int
    var column: Int
    var value: Int

    init(row: Int, column: Int, value: Int) {
        self.row = row
        self.column = column
        self.value = value
    }

    // hashValue does not have to be unique
    override public var hashValue: Int {
        return (1024 * row) + column
    }

    /// computed property
    // http://stackoverflow.com/questions/30967182/overriding-description-method-in-nsobject-on-swift
    override public var description: String {
        return "(row: \(row), column: \(column), value: \(value))"
    }

}

/// implement Equatable, outside of class Cell
/// - Parameters:
///   - lhs: a Cell
///   - rhs: a Cell
/// - Returns: true if all properties are equal
public func == (lhs: Cell, rhs: Cell) -> Bool {
    let valueEqual = lhs.value == rhs.value
    let rowEqual = lhs.row == rhs.row
    let columnEqual = lhs.column == rhs.column
    return valueEqual && rowEqual && columnEqual
}
