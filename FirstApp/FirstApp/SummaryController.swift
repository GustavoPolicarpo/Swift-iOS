//
//  SummaryController.swift
//  FirstApp
//
//  Created by user270444 on 11/3/24.
//

import UIKit

class SummaryController: UIViewController {
    
    var runningTitle: String?
    var distance: String?
    var time: String?
    
    @IBOutlet weak var runningTitleLabel: UILabel!
    @IBOutlet weak var notesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        runningTitleLabel.text = runningTitle
        
        let averageSpeed = calculateAverageSpeed(distanceString: distance!, timeString: time!)
        let averageSpeedString = String(format: "%.2f", averageSpeed)
        
        let greetings = [
            "Way to go! You've maintained an average speed of \(averageSpeedString) km/h!",
            "Awesome run! Your average speed was \(averageSpeedString) km/h. Keep it up!",
            "Congratulations! You just ran at an average speed of \(averageSpeedString) km/h!",
            "Fantastic effort! Your average speed came out to \(averageSpeedString) km/h!",
            "Well done! You've completed your run with an average speed of \(averageSpeedString) km/h!",
            "Nice work out there! Your average speed for this run was \(averageSpeedString) km/h.",
            "Impressive pace! Your average speed was \(averageSpeedString) km/h. Keep pushing!",
            "You’re crushing it! Your average speed is \(averageSpeedString) km/h.",
            "Great run! Your average speed was \(averageSpeedString) km/h. Keep striving for your goals!"
        ]

        notesLabel.text = greetings.randomElement()
        // Do any additional setup after loading the view.
    }
    
    
    func calculateAverageSpeed(distanceString: String, timeString: String) -> Double {
        if let distance = Double(distanceString), let timeInMinutes = Double(timeString) {
            let timeInHours = timeInMinutes / 60.0
            let averageSpeed = distance / timeInHours
            return averageSpeed
        }
        return -1
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
