//
//  MatrixZeroer.swift
//  MatrixZeroer
//
//  Created by Steve Baker on 5/20/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import UIKit

/// MatrixZeroer operates on a matrix of n rows by m columns.
/// The matrix "rows" is implemented as an array of arrays.
/// Each row is an array of elements.
/// e.g. row0 = [row0column0, row0column1, row0column2] == [6, 8, 10]
/// The nested arrays can be treated like a 2d matrix.
/// rows = [row0, row1] == [[6, 8, 10], [5, -3, 4]]
/// Element type is Int, but the problem specifies every element is either 0 or 1.
public class MatrixZeroer: NSObject {

    /// If an element in the original rows is 0, the method zeroes it's entire row and column.
    /// Mutates rows matrix rather than creating a new one.
    /// Example usage:
    /// var rows = [[0, 1, 1, 0], [1, 0, 1, 0], [0, 1, 1, 0]]
    /// MatrixZeroer.zeroMatchingRowsAndColumns(rows: &rows)
    /// - Parameter rows: inout parameter.
    ///   After method returns, rows has been mutated.
    public class func zeroMatchingRowsAndColumns(rows: inout [[Int]]) {

        let firstZeroes = MatrixZeroer.getFirstZeroes(rows: rows)

        for zero in firstZeroes {
            MatrixZeroer.zeroAllElementsInRow(rows: &rows, rowNumber: zero.row)
            MatrixZeroer.zeroAllElementsInColumn(rows: &rows, columnNumber: zero.column)
        }
    }

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

    /// returns array of cells corresponding to rows matrix
    /// first elements in a row or column whose value is 0
    public class func getFirstZeroes(rows: [[Int]]) -> [Cell] {
        var zeroes = [Cell]()

        var rowNumbersToSkip = [Int]()
        var columnNumbersToSkip = [Int]()

        let rowsCount = rows.count
        let columnsCount = rows[0].count

        for rowNumber in 0..<rowsCount {
            if rowNumbersToSkip.contains(rowNumber) {
                // next iteration, next row number
                continue
            }
            for columnNumber in 0..<columnsCount {
                
                if columnNumbersToSkip.contains(columnNumber)
                    || rowNumbersToSkip.contains(rowNumber) {
                    // next iteration, next column number
                    continue
                }

                if rows[rowNumber][columnNumber] == 0 {
                    let cell = Cell(row: rowNumber, column: columnNumber, value: 0)
                    zeroes.append(cell)
                    rowNumbersToSkip.append(rowNumber)
                    columnNumbersToSkip.append(columnNumber)
                }
            }
        }
        return zeroes
    }

}
