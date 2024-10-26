//
//  RunViewController.swift
//  FirstApp
//
//  Created by user270444 on 10/26/24.
//

import UIKit

class RunViewController: UIViewController {
    @IBOutlet weak var runningTitle: UITextField!
    @IBOutlet weak var distance: UITextField!
    @IBOutlet weak var time: UITextField!
    @IBOutlet weak var notes: UITextView!
    
    @IBAction func runningSave(_ sender: UIButton) {
        guard let dist = distance.text, !dist.isEmpty,
              let tm = time.text, !tm.isEmpty else {
                //showAlert(" Enter distance and time ")
                return
            }
        print(dist)
     }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
