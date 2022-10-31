//
//  ViewController.swift
//  Veg Day
//
//  Created by Николай Федоров on 04.03.2022.
//

import UIKit // Подключение фреймворка

// Создаем класс и наследуем другие классы
class EatViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout, UISearchResultsUpdating {
    
    // Реализуем переменные, которые будут принимать информацию и передавать ее в следующий контроллер 
    var eatAll=EatModelBrain()
    var filterEat=EatModelBrain()


    @IBOutlet var myCollectionView: UICollectionView!
    
    // Создается поиск
    let searchControllerEat=UISearchController(searchResultsController: nil)
    var searchBarEatIsAbsent:Bool{
        guard let text=searchControllerEat.searchBar.text else {
            return false
        }
        return text.isEmpty
    }
    var isFilteringVegEat:Bool{
        return searchControllerEat.isActive && !searchBarEatIsAbsent
    }
    
    
    // Переопределение метода родительского класса
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Подписываемся на делегаты и на источники информации
        myCollectionView.delegate=self
        myCollectionView.dataSource=self
        
        // Регистрируем ячейку Collection View
        myCollectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "eatId")
        
        // Создаем UI дизайн
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title="Рецепт блюд"
        myCollectionView.backgroundColor = .white
        
        // Подписываемся на делегаты и на источники информации
        searchControllerEat.searchResultsUpdater=self
        searchControllerEat.obscuresBackgroundDuringPresentation=false
        
        // Создаем UI дизайн
        searchControllerEat.searchBar.placeholder="Поиск по блюдам"
        navigationItem.searchController=searchControllerEat
        definesPresentationContext=true
        
        
    }
    
    // С помощью данного метода будем показывать сколько будет ячеек
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if isFilteringVegEat{
            return filterEat.eat.count
        }
        
        return eatAll.eat.count
        
        
        
    }
    // Реализуем регистрацию ячейки и сортировки по поиску
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "eatId", for: indexPath) as! CollectionViewCell
        
        let eat:EatModel
        
        if isFilteringVegEat{
            eat=filterEat.eat[indexPath.item]
        }else {
            eat=eatAll.eat[indexPath.item]
        }
        
        
        cell.setCell(prod: eat)
        return cell
    
    }

    // Создаем UI дизайн
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 150)
    }
    
    // Создаем UI дизайн
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    // С помощью этого метода будем передавать информацию следующему контроллеру
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let sb=UIStoryboard(name: "Main", bundle: .main)
        let vc=sb.instantiateViewController(identifier: "InfoEatViewController") as! InfoEatViewController
        
        
        if isFilteringVegEat{
            vc.infoEat=filterEat.eat[indexPath.item]
            
        }
        else{
            vc.infoEat=eatAll.eat[indexPath.item]
        }
        
        
    
        navigationController?.pushViewController(vc, animated: true)
        myCollectionView.deselectItem(at: indexPath, animated: true)
    
}
    
    // Настройка поиска
    func filterTextVeganEat(_ search:String){
        filterEat.eat=eatAll.eat.filter({ (every:EatModel) in
            return (every.name?.uppercased().contains(search.uppercased()))!
            
        })
        myCollectionView.reloadData()
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        filterTextVeganEat(searchControllerEat.searchBar.text!)
    }


}
