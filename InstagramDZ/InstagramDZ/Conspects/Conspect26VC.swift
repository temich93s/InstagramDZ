//
//  Conspect26VC.swift
//  Conspects25-25
//
//  Created by 2lup on 16.10.2022.
//

// MARK: Видеоурок 26 - UITableViewController, MVC, UserDefaults

/*

import UIKit
 
 /// Conspect26VC
class Conspect26VC: UIViewController {

    let tableVC = UITableViewController(style: .plain)
    
    // создание рефреш индикатора при свайпе
    var refresh = UIRefreshControl()
    
    var allTime [Date] = []
    //var allItem = ["111", "222", "333"]
    // id ячейки
    var cellID = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        
        createTableView()
        
        // назначаем действие рефрешеру
        refresh.addTarget(self, action: #selector(doRefresh), for: .valueChanged)
        refresh.tintColor = .red
        // добавляем рефрешер во внутрь таблицы
        tableVC.tableView.addSubview(refresh)
        
        view.addSubview(tableVC.tableView)
    }
    
    @objc func doRefresh() {
        allTime.append(Date())
        //останавливаем рефрешер
        refresh.endRefreshing()
        // создаем IndexPath что бы вставить по нему ячейку
        let indexPathNewRow = IndexPath(row: allTime.count - 1, section: 0)
        // вставляем новую струку по нашему IndexPath
        tableVC.tableView.insertRows(at: [indexPathNewRow], with: .automatic)
    }
    
    func createTableView() {
        // инициализируем tableView у tableVC
        tableVC.tableView = UITableView(frame: view.bounds, style: .plain)
        // регистрируем ячейку
        tableVC.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableVC.tableView.delegate = self
        tableVC.tableView.dataSource = self
    }

}

extension Conspect26VC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        allTime.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // создаем ячейку
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        let date = allTime[indexPath.row]
        cell.textLabel?.text = "\(date)"
        return cell
    }
    
}
*/
