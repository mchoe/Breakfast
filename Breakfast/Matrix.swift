//
//  Matrix.swift
//  Breakfast
//  Start you next Swift project off right with Breakfast
//
//
//  Copyright (c) 2015 Michael Choe
//  http://www.straussmade.com/
//  http://www.twitter.com/_mchoe
//  http://www.github.com/mchoe
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import Foundation


public struct Matrix<T> {
    
    var rowCount: Int
    var columnCount: Int
    
    var totalElementCount: Int {
        get {
            return self.elements.count
        }
    }
    
    var dimensions: (rows: Int, columns: Int) {
        get {
            return (rows: self.rowCount, columns: self.columnCount)
        }
    }
    
    public private(set) var elements: Array<T>
    
    init(matrix: [[T]]) {
        
        let columns = matrix[0].count
        
        precondition(matrix.filter{$0.count != columns}.isEmpty, "All matrix rows should have the same number of columns.")
        
        self.rowCount = matrix.count
        self.columnCount = columns
        
        self.elements = [T]()
        for thisRow in matrix {
            self.addRow(thisRow)
        }
    }
    
    init() {
        self.rowCount = 0
        self.columnCount = 0
        self.elements = [T]()
    }
    
}

private extension Matrix {
    func linearIndex(row: Int, column: Int) -> Int {
        return row * self.columnCount + column
    }
    
    func coordinates(linearIndex: Int) -> (row: Int, column: Int) {
        return (row: linearIndex / self.columnCount, column: linearIndex % self.columnCount)
    }
}

public extension Matrix {
    
    public subscript (i: Int, j: Int) -> T {
        
        get {
            return elements[i * self.columnCount + j]
        }
        
        set {
            elements[i * self.columnCount + j] = newValue
        }
    }
    
    public mutating func add(element: T) {
        assert(false, "Needs Implementing")
    }
    
    public mutating func addColumn(column: T) {
        assert(false, "Needs Implementing")
    }
    
    public mutating func addRow(row: [T]) {
        precondition(self.elements.count % row.count == 0, "Column count must be the same for all rows")
        
        if self.columnCount != row.count {
            self.columnCount = row.count
        }
        
        self.elements += row
        self.rowCount++
    }
    
    
}

extension Matrix: CustomStringConvertible {
    
    public var description: String {
        return "\(self.dimensions)"
    }
    
}

extension Matrix: SequenceType {
    
    public typealias Generator = AnyGenerator<T>
    
    public func generate() -> Generator {
        var currentIndex = 0
        
        return anyGenerator({ () -> T? in
            if currentIndex < self.totalElementCount {
                return self.elements[currentIndex++]
            }
            return nil
        })
    }
    
}


public struct MatrixReverseGenerator<T>: GeneratorType {
    
    public typealias Element = T
    let matrix: Matrix<T>
    var currentIndex = 0
    
    init(matrix: Matrix<T>) {
        self.matrix = matrix
        self.currentIndex = self.matrix.totalElementCount - 1
    }
    
    mutating public func next() -> Element? {
        if self.currentIndex >= 0 {
            return self.matrix.elements[self.currentIndex--]
        }
        return nil
    }
    
}
