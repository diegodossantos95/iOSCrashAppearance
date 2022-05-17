//
//  ImageTableViewCell.swift
//  AppearanceCrash
//
//  Created by Diego dos Santos on 17/05/22.
//

import UIKit

class ImageTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

extension ImageTableViewCell: ThemeSupport {
    public class func updateColors(for theme: ThemeColor, style: UIUserInterfaceStyle, containers: [UIViewController.Type]) {
        let cell = ImageTableViewCell.appearance(whenContainedInInstancesOf: containers)

        cell.tintColor = theme.headerColor
        cell.backgroundColor = .blue
    }
}
