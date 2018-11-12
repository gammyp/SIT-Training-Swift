//
//  ViewController.swift
//  Element Quiz v.1.0
//
//  Created by Student26 on 12/11/2561 BE.
//  Copyright © 2561 Student26. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBAction func showAnswer(_ sender: UIButton) {
        answerLabel.text = elementList[currentElementIndex]
    }
    
    @IBAction func goToNextElement(_ sender: Any) {
        currentElementIndex = currentElementIndex+1
        if (currentElementIndex >= elementList.count) {
            currentElementIndex = 0
        }
        updateElement()
    }
    
    func updateElement() {
            answerLabel.text = "?"
            imageView.image = UIImage(named: elementList[currentElementIndex])
    }
    
    let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    var currentElementIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateElement()
    }


}

