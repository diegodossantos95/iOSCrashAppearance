//
//  PollMultiChoiceTableViewCell.swift
//  AppearanceCrash
//
//  Created by Diego dos Santos on 16/05/22.
//

import Foundation
import UIKit

class PollMultiChoiceTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

extension PollMultiChoiceTableViewCell: ThemeSupport {
    public class func updateColors(for theme: ThemeColor, style: UIUserInterfaceStyle, containers: [UIViewController.Type]) {
        let cell = PollMultiChoiceTableViewCell.appearance(whenContainedInInstancesOf: containers)

        cell.tintColor = theme.headerColor
        cell.backgroundColor = theme.buttonColor
    }
}
