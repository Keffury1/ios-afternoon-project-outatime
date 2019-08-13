//
//  DatePickerViewController.swift
//  OutaTime
//
//  Created by Bobby Keffury on 8/13/19.
//  Copyright © 2019 Bobby Keffury. All rights reserved.
//

import UIKit

protocol DatePickerDelegate {
    func destinationDateWasChosen (_ date: Date)
}
class DatePickerViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    // MARK: - Properties
    
    var delegate: DatePickerDelegate?
    

    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    // MARK: - Actions
    
    @IBAction func cancelTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func doneTapped(_ sender: Any) {
        //delegate?.destinationDateWasChosen(not sure what to pass in here)
        
        dismiss(animated: true, completion: nil)
    }
    
    

}
