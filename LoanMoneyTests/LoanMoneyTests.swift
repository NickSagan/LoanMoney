//
//  LoanMoneyTests.swift
//  LoanMoneyTests
//
//  Created by Nick Sagan on 18.03.2022.
//

import XCTest
@testable import LoanMoney

class LoanMoneyTests: XCTestCase {

    func testExample() throws {
        XCTAssertTrue(true)
        XCTAssertTrue(SharedData.instance.loans.count > 0)
        XCTAssertTrue(SharedData.instance.debitCards.count > 0)
        XCTAssertTrue(SharedData.instance.companies.count > 0)
        XCTAssertTrue(SharedData.instance.creditCards.count > 0)
        XCTAssertTrue(SharedData.instance.news.count > 0)
        XCTAssertTrue(SharedData.instance.sideMenu.count > 0)
        XCTAssertTrue(SharedData.instance.infotext.count > 0)
    }

}
