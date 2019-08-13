//
//  TimeCircuitsViewController.swift
//  OutaTime
//
//  Created by Bobby Keffury on 8/13/19.
//  Copyright © 2019 Bobby Keffury. All rights reserved.
//

import UIKit

class TimeCircuitsViewController: UIViewController {
    
    // MARK: - Outlets

    @IBOutlet weak var destinationTimeLabel: UILabel!
    @IBOutlet weak var presentTimeLabel: UILabel!
    @IBOutlet weak var lastTimeDepartedLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!
    
    
    
    // MARK: - Properties
    
    var currentSpeed = 0
    
    var dateFormatter: DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM:dd:yyyy"
        return dateFormatter
    }
    
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ModalDestinationDatePickerSegue" {
            if let destinationVC = segue.destination as? DatePickerViewController {
                destinationVC.delegate = self
            }
        }
    }

    
    // MARK: - Actions
    
    @IBAction func travelBackTapped(_ sender: Any) {
        
    }
    
    // MARK: - Private
    
    private func updateViews() {
        //presentTimeLabel.text = dateFormatter.string(from: date) UNSURE HOW TO GET CURRENT DATE
        speedLabel.text = "\(currentSpeed) MPH" // Not the right font
        lastTimeDepartedLabel.text = "--- -- ----"
        //destinationTimeLabel.text = need to set to date that was chosen by the user
    }
    
    private func startTimer() {
       // Functionality is unclear
    }
    
    private func resetTimer() {
        // Functionality is unclear
        
    }
    
    private func updateSpeed() {
        if currentSpeed <= 88 {
            currentSpeed += 1
            speedLabel.text = "\(currentSpeed) MPH"
        } else {
            resetTimer()
            lastTimeDepartedLabel.text = presentTimeLabel.text
            presentTimeLabel.text = destinationTimeLabel.text
            currentSpeed = 0
            //Dont feel like i did the below portion correctly.
            let alert = UIAlertController(title: "Time Travel Successful", message: "Your new date is \(presentTimeLabel.text)", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alert, animated: true)
        }
    }
    

}

extension TimeCircuitsViewController: DatePickerDelegate {
     func destinationDateWasChosen(_ date: Date) {
    print("not finished yet")
     }
    
}
