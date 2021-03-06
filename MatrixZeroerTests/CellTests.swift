//
//  CellTests.swift
//  MatrixZeroer
//
//  Created by Steve Baker on 5/20/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import XCTest
@testable import MatrixZeroer

class CellTests: XCTestCase {

    func testCell() {
        let cell = Cell(row: 2, column: 5, value: 8)
        XCTAssertEqual(cell.row, 2)
        XCTAssertEqual(cell.column, 5)
        XCTAssertEqual(cell.value, 8)
    }

    func testCellDescription() {
        let cell = Cell(row: 2, column: 5, value: 8)
        let expectedDescription = "(row: 2, column: 5, value: 8)"
        XCTAssertEqual(cell.description, expectedDescription)
    }

    func testCellEqual() {
        let cell0 = Cell(row: 2, column: 5, value: 8)
        let cell1 = Cell(row: 2, column: 5, value: 8)
        XCTAssertEqual(cell1, cell0)
        XCTAssertTrue(cell1 == cell0)
    }

    func testCellNotEqualColumn() {
        let cell0 = Cell(row: 2, column: 5, value: 8)
        let cell1 = Cell(row: 2, column: 4, value: 8)
        XCTAssertNotEqual(cell1, cell0)
        XCTAssertFalse(cell1 == cell0)
    }

    func testCellNotEqualValue() {
        let cell0 = Cell(row: 2, column: 5, value: 8)
        let cell1 = Cell(row: 2, column: 5, value: 1)
        XCTAssertNotEqual(cell1, cell0)
        XCTAssertFalse(cell1 == cell0)
    }

}
