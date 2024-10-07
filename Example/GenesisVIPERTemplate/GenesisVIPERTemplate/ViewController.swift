//
//  ViewController.swift
//  GenesisVIPERTemplate
//
//  Created by Akira Matsuda on 2023/02/11.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func presentModule(_: Any) {
        navigationController?.pushViewController(ExampleModuleRouter.assembleModule(), animated: true)
    }
}
