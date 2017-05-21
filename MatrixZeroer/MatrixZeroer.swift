//
//  MatrixZeroer.swift
//  MatrixZeroer
//
//  Created by Steve Baker on 5/20/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import UIKit

public class MatrixZeroer: NSObject {

    // rows array contains row arrays.
    // The nested arrays can be treated like a 2d matrix.
    // rows = [ row0, row1, row2]
    // each row is an array of column elements e.g.
    // row0 = [column0, column1...]
    var rows = [[Int]]()

    /// mutates rows matrix
    // TODO: use inout modifier on parameter matrix
    public class func zeroAllElementsInRow(rows: inout [[Int]], rowNumber: Int) {
        let rowCount = rows[rowNumber].count
        for column in 0..<rowCount {
            // to affect rows, must assign to it directly
            rows[rowNumber][column] = 0
        }
    }
}
