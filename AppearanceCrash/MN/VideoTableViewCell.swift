//
//  VideoTableViewCell.swift
//  AppearanceCrash
//
//  Created by Diego dos Santos on 17/05/22.
//

import UIKit

class VideoTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

extension VideoTableViewCell: ThemeSupport {
    public class func updateColors(for theme: ThemeColor, style: UIUserInterfaceStyle, containers: [UIViewController.Type]) {
        let cell = VideoTableViewCell.appearance(whenContainedInInstancesOf: containers)

        cell.textLabel?.tintColor = theme.headerColor
        cell.backgroundColor = .red
    }
}
