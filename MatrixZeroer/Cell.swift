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

    /// override isEqual enables comparing cells via isEqual, XCTAssertEqual and ==
    /// so it is more general than simply defining func '==' for 2 Cell
    override public func isEqual(_ x: Any?) -> Bool {
        guard let x = x as? Cell else {
            return false
        }
        let rowEqual = row == x.row
        let columnEqual = column == x.column
        let valueEqual = value == x.value
        return rowEqual && columnEqual && valueEqual
    }

    /// computed property
    // http://stackoverflow.com/questions/30967182/overriding-description-method-in-nsobject-on-swift
    override public var description: String {
        return "(row: \(row), column: \(column), value: \(value))"
    }
}
