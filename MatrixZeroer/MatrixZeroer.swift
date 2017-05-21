//
//  MatrixZeroer.swift
//  MatrixZeroer
//
//  Created by Steve Baker on 5/20/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import UIKit

public class MatrixZeroer: NSObject {

    // rows array contains rows.
    // each row is an array of column elements e.g.
    // row0 = [column0, column1, column2] == [6, 8, 10]
    // The nested arrays can be treated like a 2d matrix.
    // rows = [row0, row1] == [[6, 8, 10], [5, -3, 4]]
    var rows = [[Int]]()

    /// mutates rows matrix
    public class func zeroAllElementsInColumn(rows: inout [[Int]], columnNumber: Int) {
        let rowsCount = rows.count
        for rowNumber in 0..<rowsCount {
            // to affect rows, must assign to it directly
            rows[rowNumber][columnNumber] = 0
        }
    }

    /// mutates rows matrix
    public class func zeroAllElementsInRow(rows: inout [[Int]], rowNumber: Int) {
        let columnsCount = rows[rowNumber].count
        for columnNumber in 0..<columnsCount {
            // to affect rows, must assign to it directly
            rows[rowNumber][columnNumber] = 0
        }
    }
}
