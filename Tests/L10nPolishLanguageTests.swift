//
//  L10nPolishLanguageTests.swift
//  L10n_swift
//
//  Created by Adrian Bobrowski on 29.07.2017.
//  Copyright © 2017 Adrian Bobrowski (Decybel07), adrian071993@gmail.com. All rights reserved.
//

import XCTest
@testable import L10n_swift

class L10nPolishLanguageTests: XCTestCase {

    var instance: L10n!

    override func setUp() {
        super.setUp()
        self.instance = L10n(bundle: Bundle(for: L10nPolishLanguageTests.self), language: "pl")
    }

    func testDefinedKey() {
        XCTAssertEqual("Witaj świecie!", self.instance.string(for: "HelloWorld"))
    }

    func testUndefinedKey() {
        XCTAssertEqual("SomeUndefinedKey", self.instance.string(for: "SomeUndefinedKey"))
    }

    func testDefinedGroupKeyValue() {
        XCTAssertEqual("Język", self.instance.string(for: "language"))
    }

    func testDefinedGroupKey() {
        XCTAssertEqual("Angielski", self.instance.string(for: "language.english"))
    }

    func testUndefinedGroupKey() {
        XCTAssertEqual("some.undefined.key", self.instance.string(for: "some.undefined.key"))
    }

    func testDefinedPlural() {
        XCTAssertEqual("Zero jabłek", self.instance.plural(for: "numberOfApples", arg: 0))
        XCTAssertEqual("Jedno jabłko", self.instance.plural(for: "numberOfApples", arg: 1))
        XCTAssertEqual("2 jabłka", self.instance.plural(for: "numberOfApples", arg: 2))
        XCTAssertEqual("5 jabłek", self.instance.plural(for: "numberOfApples", arg: 5))
        XCTAssertEqual("124 jabłka", self.instance.plural(for: "numberOfApples", arg: 124))
    }

    func testUndefinedPlural() {
        XCTAssertEqual("someUndefinedPlural", self.instance.plural(for: "someUndefinedPlural", arg: 5))
    }
}
