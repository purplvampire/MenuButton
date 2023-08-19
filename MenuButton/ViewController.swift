//
//  ViewController.swift
//  MenuButton
//
//  Created by 陳信彰 on 2023/8/19.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let menuButtonItem = UIBarButtonItem(systemItem: .trash)
        
        menuButtonItem.menu = UIMenu(children: [
            UIAction(title: "Select Messages", image: UIImage(systemName: "checkmark.circle"), handler: { action in
                print("Select Message")
                }),
            UIAction(title: "Edit Pins", image: UIImage(systemName: "pin")) { action in
                print("Edit Pins")
                },
            UIAction(title: "Edit Name and Photo", image: UIImage(systemName: "person.crop.circle"), handler: { action in
                print("Edit Name and Photo")
            })
        ])

        self.navigationItem.rightBarButtonItem = menuButtonItem

    }


}

