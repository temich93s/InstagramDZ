//
//  Conspect26VC5.swift
//  Conspects25-25
//
//  Created by 2lup on 16.10.2022.
//

// MARK: Видеоурок 26 - UITableViewController, MVC, UserDefaults

/*
import UIKit

// статические ячейки
class Conspect26VC5: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if let name = UserDefaults.standard.object(forKey: "name") {
            lastName.text = name as? String
        }
        if let profes = UserDefaults.standard.object(forKey: "prof") {
            prof.text = profes as? String
        }
        if let switc = UserDefaults.standard.object(forKey: "switch") {
            notification.isOn = switc as! Bool
        }
        if let segment = UserDefaults.standard.object(forKey: "segment") {
            sexStatus.selectedSegmentIndex = segment as! Int
        }
    }

    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var prof: UITextField!
    @IBOutlet weak var sexStatus: UISegmentedControl!
    @IBOutlet weak var notification: UISwitch!
    
    @IBAction func saveButton(_ sender: UIButton) {
        UserDefaults.standard.setValue(lastName.text, forKey: "name")
        UserDefaults.standard.setValue(prof.text, forKey: "prof")
        UserDefaults.standard.setValue(notification.isOn, forKey: "switch")
        UserDefaults.standard.setValue(sexStatus.selectedSegmentIndex, forKey: "segment")
        print("save")
        lastName.resignFirstResponder()
    }

}
*/
