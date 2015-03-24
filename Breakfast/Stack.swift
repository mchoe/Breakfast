//
//  Stack.swift
//  Breakfast
//  Start you next Swift project off right with Breakfast
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

public struct Stack<T> {
    
    public var items = [T]()
    
    public init() {}
    
    public mutating func push(itemToPush: T) {
        self.items.append(itemToPush)
    }
    
    public mutating func pop() -> T {
        return self.items.removeLast()
    }
}

public extension Stack {
    public var count: Int {
        get {
            return self.items.count
        }
    }
    
    public var isEmpty: Bool {
        get {
            if self.items.count > 0 {
                return true
            }
            return false
        }
    }
    
    public var last: T? {
        get {
            if self.isEmpty == false {
                return self.items.last
            }
            return nil
        }
    }
}