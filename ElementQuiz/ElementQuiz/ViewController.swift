//
//  ViewController.swift
//  ElementQuiz
//
//  Created by Волошин Нікіта on 18.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView:UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    
    let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    
    var     currentElementIndex = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateElement()
    }
    
    func updateElement() {
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
        
        answerLabel.text = "?"
    }
    
    @IBAction func showAnswerButton(_ sender: Any) {
        answerLabel.text = elementList[currentElementIndex]
    }
    
    @IBAction func nexyAnswerButton(_ sender: Any) {
        currentElementIndex += 1
        if currentElementIndex >= elementList.count {
            currentElementIndex = 0
        }
        updateElement()
    }
    
}

