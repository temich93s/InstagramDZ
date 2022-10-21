//
//  Conspect26VC2.swift
//  Conspects25-25
//
//  Created by 2lup on 16.10.2022.
//

// MARK: Видеоурок 26 - UITableViewController, MVC, UserDefaults

/*
import UIKit

// Conspect26VC2
class Conspect26VC2: UITableViewController {

    var itemArray: [Model] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let item = Model(name: "Dima", prof: "Driver")
        itemArray.append(item)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // создаем ячейку и кастим ее до нашей кастомной ячейки
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? Conspect26VC3 {
            let item = itemArray[indexPath.row]
            cell.refresh(item)
            return cell
        }
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }

}
*/
