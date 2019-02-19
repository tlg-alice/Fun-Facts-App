//
//  ViewController.swift
//  Fun Facts App
//
//  Created by Alice Muir on 13.02.19.
//  Copyright © 2019 Alice Muir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet var funFactButton: UIView!
    
    
    @IBOutlet weak var funFactLabel: UILabel!
  let factProvider = FactProvider()
    // random background colors
    let colorProvider = BackgroundColorProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factProvider.randomFact()
    }
    
    
    @IBAction func showFact() {
       funFactLabel.text = factProvider.randomFact()
        
        // here we will also randomise which background colour is shown when the button is pressed
        let randomColor = colorProvider.randomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
        
       
    }
    

}

