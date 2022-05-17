//
//  ViewController.swift
//  AppearanceCrash
//
//  Created by Diego dos Santos on 16/05/22.
//

import UIKit

class ViewController: UIViewController {

    let style = Style()

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

        for cell in Cell.allCases {
            tableView.register(cell.getCellClass(), forCellReuseIdentifier: cell.rawValue)
        }
    }

    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        style.commit(style: traitCollection.userInterfaceStyle)
    }
}

extension ViewController: UITableViewDataSource {

    enum Cell: String, CaseIterable {
        case video
        case image
        case tip
        case file
        case link
        case article
        case event
        case pollHotCold
        case pollPercentage
        case pollMultiChoice

        static func random() -> Cell {
            return allCases.randomElement()!
        }

        func getCellClass() -> AnyClass {
            switch self {
                case .video:
                    return VideoTableViewCell.self
                case .image:
                    return ImageTableViewCell.self
                case .tip:
                    return TipTableViewCell.self
                case .file:
                    return FileTableViewCell.self
                case .link:
                    return LinkTableViewCell.self
                case .article:
                    return ArticleTableViewCell.self
                case .event:
                    return EventTableViewCell.self
                case .pollHotCold:
                    return PollHotColdTableViewCell.self
                case .pollPercentage:
                    return PollPercentageTableViewCell.self
                case .pollMultiChoice:
                    return PollMultiChoiceTableViewCell.self
            }
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let randomCell = Cell.random()
        let cell = tableView.dequeueReusableCell(withIdentifier: randomCell.rawValue, for: indexPath)
        cell.textLabel?.text = "\(randomCell.rawValue)_\(indexPath.row)_\(indexPath.section)"
        return cell
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        50
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        show(UIImagePickerController(), sender: self)
    }
}
