//
//  MatrixZeroerTests.swift
//  MatrixZeroerTests
//
//  Created by Steve Baker on 5/20/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import XCTest
@testable import MatrixZeroer

class MatrixZeroerTests: XCTestCase {
    

    func testZeroAllElementsInRow() {

        let row0 = [6, 8, 10]
        let row1 = [5, -3, 4]
        var rows = [row0, row1]

        XCTAssertEqual(rows[0], [6, 8, 10])
        XCTAssertEqual(rows[1], [5, -3, 4])
        XCTAssertEqual(rows.description, "[[6, 8, 10], [5, -3, 4]]")

        // call method under test
        MatrixZeroer.zeroAllElementsInRow(rows: &rows, rowNumber: 0)

        XCTAssertEqual(rows.description, "[[0, 0, 0], [5, -3, 4]]")

        MatrixZeroer.zeroAllElementsInRow(rows: &rows, rowNumber: 1)

        XCTAssertEqual(rows.description, "[[0, 0, 0], [0, 0, 0]]")
    }

    func testZeroAllElementsInColumn() {

        var rows = [[6, 8, 10], [5, -3, 4]]
        XCTAssertEqual(rows.description, "[[6, 8, 10], [5, -3, 4]]")

        // call method under test
        MatrixZeroer.zeroAllElementsInColumn(rows: &rows, columnNumber: 1)

        XCTAssertEqual(rows.description, "[[6, 0, 10], [5, 0, 4]]")

        MatrixZeroer.zeroAllElementsInColumn(rows: &rows, columnNumber: 2)

        XCTAssertEqual(rows.description, "[[6, 0, 0], [5, 0, 0]]")
    }

    func testGetAllZeroes() {

        let rows = [[1, 0, 1], [0, 1, 1]]
        XCTAssertEqual(rows.description, "[[1, 0, 1], [0, 1, 1]]")

        // call method under test
        let actual = MatrixZeroer.getAllZeroes(rows: rows)

        XCTAssertEqual(actual.count, 2)

        let expectedDescription = "[(row: 0, column: 1, value: 0), (row: 1, column: 0, value: 0)]"

        XCTAssertEqual(actual.description, expectedDescription)
    }

}
