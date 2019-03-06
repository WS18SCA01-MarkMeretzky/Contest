//
//  ViewController.swift
//  Contest
//
//  Created by Mark Meretzky on 2/28/19.
//  Copyright © 2019 New York University School of Professional Studies. All rights reserved.
//

import UIKit;

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!;
    
    override func viewDidLoad() {
        super.viewDidLoad();
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func submitButtonPressed(_ sender: UIButton) {
        if let text: String = textField.text,
            !text.isEmpty {
            performSegue(withIdentifier: "success", sender: sender);
        } else {
            UIView.animate(
                withDuration: 0.2,
                animations: {
                    self.textField.transform = CGAffineTransform(translationX: 20, y: 0);
                }) {_ in
                    self.textField.transform = .identity;
                }
        }
    }
    
}

