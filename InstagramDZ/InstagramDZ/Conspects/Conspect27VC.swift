//
//  Conspect27VC.swift
//  Conspects25-25
//
//  Created by 2lup on 16.10.2022.
//

// MARK: Видеоурок 27 - UICollectionView, Model, Clean MVC

/*
import UIKit

 //
class Conspect27VC: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var itemMenuArray: [Menu] = {
        var blankMenu = Menu()
        blankMenu.name = "Coca-Cola"
        blankMenu.imageName = "Kola"
        
        var blankMenu2 = Menu()
        blankMenu2.name = "Kofe"
        blankMenu2.imageName = "Kola"
        
        return [blankMenu, blankMenu2]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    // метод подготовки срабатывает при переходе для подготовки контроллера на который переходим
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showVC" {
            if let vc = segue.destination as? Conspect27VC4 {
                // ловим передаваемвый сегвеем sender (типа any)
                let menu = sender as? Menu
                print(menu ?? "nil")
                vc.menu = menu
            }
        }
    }
}

extension Conspect27VC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemMenuArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let itemCell = collectionView.dequeueReusableCell(withReuseIdentifier: "menuCell", for: indexPath) as? Conspect27VC2 {
            itemCell.menu = itemMenuArray[indexPath.row]
            return itemCell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
         return CGSize(width: 150, height: 150)
    }
    
    // срабатывает при нажатии на ячейку
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let menu = itemMenuArray[indexPath.row]
        // открываем второй экран, передавая menu
        performSegue(withIdentifier: "showVC", sender: menu)
    }
}
*/
