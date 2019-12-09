//
//  ViewController.swift
//  proyecto01
//
//  Created by Jean Carlo on 11/26/19.
//  Copyright © 2019 Jinex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var aux: Bool = true
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pantalla03(_ sender: Any) {
        performSegue(withIdentifier: "ptn3", sender: self)
    }
    
    @IBAction func irDosPantallas(_ sender: Any) {
        if (aux) {
            performSegue(withIdentifier: "ptn3", sender: self)
            aux = !aux
        } else {
            performSegue(withIdentifier: "ptn02", sender: self)
            aux = !aux
        }
    }
    @IBAction func irStory(_ sender: Any) {
        guard let story = UIStoryboard(name: "st2", bundle: nil).instantiateViewController(identifier: "historia") as? Story2ViewController else { return }
        present(story, animated: true, completion: nil)
    }
}

