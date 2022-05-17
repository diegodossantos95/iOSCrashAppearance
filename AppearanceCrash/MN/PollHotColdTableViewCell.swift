//
//  PollHotColdTableViewCell.swift
//  AppearanceCrash
//
//  Created by Diego dos Santos on 16/05/22.
//

import Foundation
import UIKit

class PollHotColdTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

extension PollHotColdTableViewCell: ThemeSupport {
    public class func updateColors(for theme: ThemeColor, style: UIUserInterfaceStyle, containers: [UIViewController.Type]) {
        let cell = PollHotColdTableViewCell.appearance(whenContainedInInstancesOf: containers)

        cell.tintColor = theme.headerColor
        cell.backgroundColor = theme.buttonColor
    }
}
