//
//  StringExtensionsTests.swift
//  
//
//  Created by Aleksei Danilov on 10.04.2023.
//

import XCTest
@testable import DanilovdevSwiftUtils

final class StringExtensionsTests: XCTestCase {
    func testToCharArray() {
        XCTAssertEqual("abc".toCharArray, ["a", "b", "c"])
        XCTAssertEqual("abcd".toCharArray, ["a", "b", "c", "d"])
        XCTAssertEqual("".toCharArray, [])
        XCTAssertEqual("qazwsx".toCharArray, ["q", "a", "z", "w", "s", "x"])
    }
    
    func testHasNumbers() {
        XCTAssertEqual("abc123".hasNumbers, true)
        XCTAssertEqual("abcd234".hasNumbers, true)
        XCTAssertEqual("".hasNumbers, false)
        XCTAssertEqual("qazwsx".hasNumbers, false)
    }
    
    func testHasSpaces() {
        XCTAssertEqual("abc 123".hasSpaces, true)
        XCTAssertEqual("ab cd2 34".hasSpaces, true)
        XCTAssertEqual("".hasSpaces, false)
        XCTAssertEqual("qazwsx".hasSpaces, false)
    }
    
    func testIsPalindrome() {
        XCTAssertEqual("a".isPalindrome, true)
        XCTAssertEqual("aba".isPalindrome, true)
        XCTAssertEqual("aabaa".isPalindrome, true)
        XCTAssertEqual("aabbaa".isPalindrome, true)
        XCTAssertEqual("qazwsx".isPalindrome, false)
        XCTAssertEqual("qwerty".isPalindrome, false)
        XCTAssertEqual("veritas".isPalindrome, false)
        XCTAssertEqual("majority".isPalindrome, false)
    }
    
    func testCanBeConvertedToPalindrome() {
        XCTAssertEqual("a".canBeConvertedToPalindrome, true)
        XCTAssertEqual("aab".canBeConvertedToPalindrome, true)
        XCTAssertEqual("aaaaabb".canBeConvertedToPalindrome, true)
        XCTAssertEqual("aaaabb".canBeConvertedToPalindrome, true)
        XCTAssertEqual("aaaabbccjjjj".canBeConvertedToPalindrome, true)
        XCTAssertEqual("aaaabc".canBeConvertedToPalindrome, false)
        XCTAssertEqual("qazwsx".canBeConvertedToPalindrome, false)
        XCTAssertEqual("qwerty".canBeConvertedToPalindrome, false)
        XCTAssertEqual("veritas".canBeConvertedToPalindrome, false)
        XCTAssertEqual("majority".canBeConvertedToPalindrome, false)
    }
    
    func testIntValue() {
        XCTAssertEqual("123".intValue, 123)
        XCTAssertEqual("-145".intValue, -145)
        XCTAssertEqual("".intValue, nil)
        XCTAssertEqual("aAaa".intValue, nil)
    }
    
    func testClosedRangeSubscript() {
        XCTAssertEqual("abcdefgh"[0...3], "abcd")
    }
    
    func testOneIndexSubscript() {
        XCTAssertEqual("abcdefgh"[6], "g")
    }
    
    func testNonInclusiveRangeSubscript() {
        XCTAssertEqual("abcdefgh"[1..<2], "b")
    }
    
    //
    func testRemoveDuplicates() {
        XCTAssertEqual("wombat".removeDuplicates(), "wombat")
        XCTAssertEqual("hello".removeDuplicates(), "helo")
        XCTAssertEqual("Mississippi".removeDuplicates(), "Misp")
    }
}
