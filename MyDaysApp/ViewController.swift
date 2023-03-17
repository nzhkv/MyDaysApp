//
//  ViewController.swift
//  MyDaysApp
//
//  Created by Nikolay Zhukov on 16.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var resultButton: UIButton!
    
    private var numbersOdDays = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultButton.layer.cornerRadius = 12
    }

    @IBAction func datePicker(_ sender: UIDatePicker) {
        if Date.now > sender.date {
            let range = sender.date ..< Date.now
            numbersOdDays = range.formatted(.components(style: .wide, fields: [.day]))
        }
    }
    

    @IBAction func resultButtonTapped() {
        infoLabel.text = "Ты наслаждаешься жизнью уже \(numbersOdDays)!"
    }

}

