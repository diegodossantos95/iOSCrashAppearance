//
//  Style.swift
//  AppearanceCrash
//
//  Created by Diego dos Santos on 16/05/22.
//

import UIKit

public protocol ThemeSupport {
    static func updateColors(for theme: ThemeColor, style: UIUserInterfaceStyle, containers: [UIViewController.Type])
}

public protocol ThemeColor {
    var headerColor: UIColor { get }
    var isHeaderDark: Bool { get }
    var buttonColor: UIColor { get }
    var isButtonDark: Bool { get }
    var linkColor: UIColor { get }
    var isLinkDark: Bool { get }
    var linkColorOnDark: UIColor { get }
    var contrastColorForHeader: UIColor { get }
    var contrastColorForButton: UIColor { get }
    var contrastColorForLink: UIColor { get }
    var highlightColor: UIColor { get }
    var highlightColorOnDark: UIColor { get }
}

class Style {
    // MARK: - Lifecycle

    func commit(style: UIUserInterfaceStyle) {
        let navBar = UINavigationBar.appearance()

        navBar.titleTextAttributes = [
            .foregroundColor: UIColor.red
        ]
        navBar.barStyle = .default

        _updateCells(style: style)
        updateColorsForCurrentInterfaceStyle(for: self)
    }

    func updateColorsForCurrentInterfaceStyle(for color: ThemeColor) {
        UITextField.appearance().tintColor = .blue
        UITextView.appearance().tintColor = .black
    }

    // MARK: - Private
    private func _updateCells(style: UIUserInterfaceStyle) {
        let containers = [ViewController.self]

        for type in containers {
            VideoTableViewCell.updateColors(for: self, style: style, containers: [type])
            ImageTableViewCell.updateColors(for: self, style: style, containers: [type])
            TipTableViewCell.updateColors(for: self, style: style, containers: [type])
            LinkTableViewCell.updateColors(for: self, style: style, containers: [type])
            FileTableViewCell.updateColors(for: self, style: style, containers: [type])
            ArticleTableViewCell.updateColors(for: self, style: style, containers: [type])
            EventTableViewCell.updateColors(for: self, style: style, containers: [type])
            PollMultiChoiceTableViewCell.updateColors(for: self, style: style, containers: [type])
            PollHotColdTableViewCell.updateColors(for: self, style: style, containers: [type])
            PollPercentageTableViewCell.updateColors(for: self, style: style, containers: [type])
        }
    }
}

extension Style: ThemeColor {
    var headerColor: UIColor {
        .white
    }

    var buttonColor: UIColor {
        .white
    }

    var linkColor: UIColor {
        .white
    }

    var contrastColorForHeader: UIColor {
        .white
    }

    var contrastColorForButton: UIColor {
        .white
    }

    var contrastColorForLink: UIColor {
        .white
    }

    var linkColorOnDark: UIColor {
        .white
    }

    var highlightColor: UIColor {
        .white
    }

    var highlightColorOnDark: UIColor {
        .white
    }

    var isHeaderDark: Bool {
        false
    }

    var isButtonDark: Bool {
        false
    }

    var isLinkDark: Bool {
        false
    }
}
