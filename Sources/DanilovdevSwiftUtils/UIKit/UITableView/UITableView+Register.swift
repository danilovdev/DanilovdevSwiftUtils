//
//  UITableView+Extensions.swift
//
//
//  Created by Aleksei Danilov on 22.02.2024.
//

import UIKit

extension UITableViewCell: NamePrintable { }

public extension UITableView {
    
    final func registerReusableCell<CellType: UITableViewCell>(
        _ cellType: CellType.Type,
        reuseID: String? = nil
    ) where CellType: NamePrintable {
        let validReuseID = reuseID ?? cellType.typeName
        register(cellType, forCellReuseIdentifier: validReuseID)
    }
    
    final func dequeueReusableCell<CellType: UITableViewCell>(
        _ cellType: CellType.Type,
        reuseID: String? = nil
    ) -> CellType? where CellType: NamePrintable {
        let validReuseID = reuseID ?? cellType.typeName
        return dequeueReusableCell(withIdentifier: validReuseID) as? CellType
    }
    
    final func dequeueReusableCell<CellType: UITableViewCell>(
        for indexPath: IndexPath,
        cellType: CellType.Type = CellType.self
    ) -> CellType where CellType: NamePrintable {
        guard let cell = dequeueReusableCell(withIdentifier: cellType.typeName, for: indexPath) as? CellType else {
            fatalError("Your cell \(cellType.typeName) is not registered! Please register your cell first")
        }
        return cell
    }
    
    final func dequeueReusableCellWithAutoregistration<CellType: UITableViewCell>(_ cellType: CellType.Type = CellType.self) -> CellType? {
        registerReusableCell(cellType)
        let cell = dequeueReusableCell(cellType)
        return cell
    }
    
    final func dequeueReusableCellWithAutoregistration<CellType: UITableViewCell>(
        for indexPath: IndexPath,
        _ cellType: CellType.Type = CellType.self
    ) -> CellType {
        registerReusableCell(cellType)
        let cell: CellType = dequeueReusableCell(for: indexPath)
        return cell
    }
}
