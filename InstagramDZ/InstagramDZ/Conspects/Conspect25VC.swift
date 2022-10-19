//
//  Conspect25VC.swift
//  magazineApp
//
//  Created by 2lup on 09.10.2022.
//

/*
import UIKit

// MARK: Видеоурок 25 - UITableView

/// Conspect25VC
class Conspect25VC: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    let idCell = "myCell"
    var array = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func editTable(_ sender: UIBarButtonItem) {
        myTableView.isEditing = !myTableView.isEditing
    }
}

extension Conspect25VC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: idCell, for: indexPath)
        cell.textLabel?.text = array[indexPath.row]
        return cell
    }
    
    // delete
    // Запрашивает у делегата стиль редактирования строки в определенном месте в tableview.
    func tableView(_ tableView: UITableView,
                   editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    // Запрашивает у источника данных фиксацию вставки или удаления указанной строки.
    func tableView(_ tableView: UITableView,
                   commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            array.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .left)
        }
    }
    
    // move
    // Запрашивает источник данных, может ли данная строка переместиться в другое место в табличном представлении.
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    // Сообщает источнику данных переместить строку в определенном месте в tableview в другое местоположение.
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let item = array[sourceIndexPath.row]
        array.remove(at: sourceIndexPath.row)
        array.insert(item, at: destinationIndexPath.row)
    }
    
    // зажатие ячейки
    // Спрашивает делегата, должно ли отображаться меню редактирования для определенной строки.
    func tableView(_ tableView: UITableView, shouldShowMenuForRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    // Запрашивает делегата, следует ли в меню редактирования опустить команду Копировать или вставить для данной строки.
    func tableView(_ tableView: UITableView, canPerformAction action: Selector,
                   forRowAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        print(action)
        if action == #selector(copy(_:)) {
            print("copy")
            return true
        }
        return false
    }
    
    // Указывает делегату выполнить операцию копирования или вставки содержимого данной строки.
    func tableView(_ tableView: UITableView, performAction action: Selector,
                   forRowAt indexPath: IndexPath, withSender sender: Any?) {
        if action == #selector(copy(_:)) {
            print("copy")
            let cell = tableView.cellForRow(at: indexPath)
            // Возвращает общесистемную общую вставку, которая используется для общих операций копирования-вставки
            UIPasteboard.general.string = cell?.textLabel?.text
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "Header"
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        "Footer"
    }
    
//    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
//        ["aaaaaa", "bbbbbb", "cccccc"]
//    }
//    func numberOfSections(in tableView: UITableView) -> Int {
//        2
//    }
}
*/
