//
//  LinkTableViewCell.swift
//  AppearanceCrash
//
//  Created by Diego dos Santos on 17/05/22.
//

import UIKit

class LinkTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

extension LinkTableViewCell: ThemeSupport {
    public class func updateColors(for theme: ThemeColor, style: UIUserInterfaceStyle, containers: [UIViewController.Type]) {
        let cell = LinkTableViewCell.appearance(whenContainedInInstancesOf: containers)

        cell.tintColor = theme.headerColor
        cell.backgroundColor = theme.buttonColor
    }
}
