//
//  WeatherViewController.swift
//  SimpleWeather
//
//  Created by 소프트웨어컴퓨터 on 2024/01/09.
//

import UIKit

class WeatherViewController: UIViewController {
    
    let cities = ["Seoul", "Tokyo","LA", "Seattle"]
    let weathers = ["cloud.fill", "sun.max.fill", "wind", "cloud.sun.rain.fill"]
    
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var weatherImageView: UIImageView!
    @IBAction func changeButtonTapped(_ sender: Any) {
        cityLabel.text = cities.randomElement()
        
        let imageName = weathers.randomElement()!
        weatherImageView.image = UIImage(systemName: imageName)?.withRenderingMode(.alwaysOriginal)
        
        let randomTemp = Int.random(in: 10..<30)
        tempLabel.text = "\(randomTemp)°"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.button.layer.masksToBounds = true
        self.button.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
