//
//  Conspect25VC2.swift
//  Conspects25-25
//
//  Created by 2lup on 16.10.2022.
//

/*
import UIKit

 // MARK: Видеоурок 25 - UITableView
 
/// Conspect25VC
class Conspect25VC2: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var myTabView = UITableView()
    
    // идентификатор ячейки
    let idCell = "MyCell"
    var array = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        createTable()
    }
    
    func createTable() {
        myTabView.delegate = self
        myTabView.dataSource = self
        myTabView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
        // myTabView = UITableView(frame: frame, style: .plain)
        
        // Регистрирует класс для использования при создании новых ячеек таблицы.
        myTabView.register(UITableViewCell.self, forCellReuseIdentifier: idCell)
        // Целочисленная битовая маска, которая определяет, как изменяется размер приемника при изменении границ его супервизора.
        // myTabView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        view.addSubview(myTabView)
        
    }
    
    // MARK: - UITableViewDataSource
    
    // кол-во секций
    //    func numberOfSections(in tableView: UITableView) -> Int {
    //        3
    //    }
    
    // кол-во ячеек
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //        switch section {
        //        case 0:
        //            return 3
        //        case 1:
        //            return 5
        //        case 2:
        //            return 8
        //        default:
        //            break
        //        }
        //        return 0
        
        return array.count
    }
    
    // задаем содержимое ячейки
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: idCell, for: indexPath)
        cell.textLabel?.text = "section: \(indexPath.section) - cell: \(indexPath.row)"
        //        cell.accessoryType = .detailButton
        //        switch indexPath.section {
        //        case 0:
        //            cell.backgroundColor = .red
        //        case 1:
        //            cell.backgroundColor = .blue
        //        case 2:
        //            cell.backgroundColor = .orange
        //        default:
        //            break
        //        }
        
        cell.textLabel?.text = array[indexPath.row]
        
        return cell
    }
    
    // MARK: - UITableViewDelegate
    
    // задаем высоту ячейки
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        70.0
    }
    
    // метод обрабатываюший нажатие на accessoryButton
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        print("accessoryButtonTappedForRowWith: \(indexPath)")
        let accCell = tableView.cellForRow(at: indexPath)
        print("Cell title =", accCell?.textLabel?.text ?? nil)
    }
    
    // действие при выборе ячейки
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(array[indexPath.row])
    }
    
}
*/
