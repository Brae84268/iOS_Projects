//
//  SymbolRollerViewController.swift
//  SymbolRoller
//
//  Created by 소프트웨어컴퓨터 on 2024/01/09.
//

import UIKit

class SymbolRollerViewController: UIViewController {

    let symbols:[String] = ["sun.min", "moon", "cloud", "wind", "snowflake","cloud.drizzle"]
    
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        reload()
        button.tintColor = UIColor.systemBlue
    }
    
    func reload(){
        let symbol = symbols.randomElement()!
        imageView.image = UIImage(systemName: symbol)
        label.text = symbol
        if symbol == "sun.min"{
            label.text = "sun"
        }else if symbol == "cloud.drizzle"{
            label.text = "rain"
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        reload()
    }
    
}
