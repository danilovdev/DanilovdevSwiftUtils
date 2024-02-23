//
//  UITableViewRegisterTests.swift
//  
//
//  Created by Aleksei Danilov on 23.02.2024.
//

import XCTest
import UIKit
@testable import DanilovdevSwiftUtils

final class UITableViewRegisterTests: XCTestCase {
    
    func testRegisterReusableCell() {
        // given
        let tableView = UITableView()
        
        // when
        tableView.registerReusableCell(MyCustomCell.self)
        
        // then
        let cell = tableView.dequeueReusableCell(withIdentifier: MyCustomCell.typeName)
        XCTAssertNotNil(cell)
    }
    
    func testRegisterReusableCell_andDequeueReusableCellOptional() {
        // given
        let tableView = UITableView()
        
        // when
        tableView.registerReusableCell(MyCustomCell.self)
        
        // then
        let cell: MyCustomCell? = tableView.dequeueReusableCell(MyCustomCell.self)
        XCTAssertNotNil(cell)
    }
    
    func testRegisterReusableCell_andDequeueReusableCellNotOptional_withIndexPath() {
        // given
        let tableView = UITableView()
        
        // when
        tableView.registerReusableCell(MyCustomCell.self)
        
        // then
        let cell: MyCustomCell = tableView.dequeueReusableCell(for: IndexPath(row: 0, section: 0))
        XCTAssertNotNil(cell)
    }
    
    func testRegisterReusableCell_andDequeueReusableCellNotOptional_withIndexPathAndCellType() {
        // given
        let tableView = UITableView()
        
        // when
        tableView.registerReusableCell(MyCustomCell.self)
        
        // then
        let cell: MyCustomCell = tableView.dequeueReusableCell(for: IndexPath(row: 0, section: 0), cellType: MyCustomCell.self)
        XCTAssertNotNil(cell)
    }
    
    func testDequeueReusableCellWithAutoregistration_optional() {
        // given
        let tableView = UITableView()
        
        // when
        let cell = tableView.dequeueReusableCellWithAutoregistration(MyCustomCell.self)
        
        // then
        XCTAssertNotNil(cell)
    }
    
    func testDequeueReusableCellWithAutoregistration_nonOptional() {
        // given
        let tableView = UITableView()
        
        // when
        let cell: MyCustomCell = tableView.dequeueReusableCellWithAutoregistration(for: IndexPath(row: 0, section: 0))
        
        // then
        XCTAssertNotNil(cell)
    }
}

private class MyCustomCell: UITableViewCell { }
