//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Go to Publix.",
                 description: "Go to the publix near Wawa."),
            Task(title: "Get groceries.",
                 description: "Buy milk, eggs, and sweet tea."),
            Task(title: "Go to the Wawa.",
                 description: "Go to Wawa nearby Publix and fill up the tank.")
        ]
    }
}
