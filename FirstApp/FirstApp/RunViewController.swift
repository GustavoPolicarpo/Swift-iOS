//
//  RunViewController.swift
//  FirstApp
//
//  Created by user270444 on 10/26/24.
//

import UIKit

class RunViewController: UIViewController {
    @IBOutlet weak var distance: UITextField!
    @IBOutlet weak var time: UITextField!
    @IBOutlet weak var runningTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let welcomeMessages = [
            "Hello, runner! How was your run today?",
            "Hey there! Ready to track your next run?",
            "Welcome back, athlete! Ready for another session?",
            "Hi, runner! Hope you’re feeling energized for your run!",
            "Hello! Ready to set some new personal bests?",
            "Welcome! How did today’s run go?",
            "Hey, runner! Let’s see how fast you were today!",
            "Good to see you again! Ready to hit the road?",
            "Hello! How was your training today?",
            "Hi there! Can’t wait to see your running stats!"
        ]

        runningTitle.text = welcomeMessages.randomElement()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSummary" {
            if let detailsVC = segue.destination as? SummaryController{
                detailsVC.runningTitle = runningTitle.text
                detailsVC.distance = distance.text
                detailsVC.time = time.text
            }
        }
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
