//
//  FileTableViewCell.swift
//  AppearanceCrash
//
//  Created by Diego dos Santos on 17/05/22.
//

import UIKit

class FileTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

extension FileTableViewCell: ThemeSupport {
    public class func updateColors(for theme: ThemeColor, style: UIUserInterfaceStyle, containers: [UIViewController.Type]) {
        let cell = FileTableViewCell.appearance(whenContainedInInstancesOf: containers)

        cell.tintColor = theme.headerColor
        cell.backgroundColor = theme.buttonColor
    }
}
