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

    /// returns array of cells corresponding to rows matrix all elements whose value is 0
    // TODO: to increase efficiency, can add just the first zero in a row or in a column
    public class func getAllZeroes(rows: [[Int]]) -> [Cell] {
        var zeroes = [Cell]()

        let rowsCount = rows.count
        let columnsCount = rows[0].count

        for rowNumber in 0..<rowsCount {
            for columnNumber in 0..<columnsCount {
                if rows[rowNumber][columnNumber] == 0 {
                    let cell = Cell(row: rowNumber, column: columnNumber, value: 0)
                    zeroes.append(cell)
                }
            }
        }
        return zeroes
    }

}
