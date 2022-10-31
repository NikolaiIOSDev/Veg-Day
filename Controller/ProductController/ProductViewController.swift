//
//  ProductViewController.swift
//  Veg Day
//
//  Created by Николай Федоров on 16.05.2022.
//

import UIKit // Подключение фреймворка

class ProductViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UISearchResultsUpdating  {
   
    // Реализуем переменные, которые будут принимать информацию и передавать ее в следующий контроллер
    
    @IBOutlet var prodCollection: UICollectionView!
    
    
    var prodAll=ProductModelBrain()
    var filterProd=ProductModelBrain()
    
    // Создается поиск
    let searchControllerProduct=UISearchController(searchResultsController: nil)
    
    var searchBarProductIsAbsent:Bool{
        guard let text=searchControllerProduct.searchBar.text else {
            return false
        }
        return text.isEmpty
    }
    var isFilteringVegProduct:Bool{
        return searchControllerProduct.isActive && !searchBarProductIsAbsent
    }


    // Переопределение метода родительского класса
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Подписываемся на делегаты и на источники информации
        prodCollection.delegate=self
        prodCollection.dataSource=self
        
        // Регистрируем ячейку
        prodCollection.register(UINib(nibName: "ProductCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "prodCellId")
        
        // Создаем UI дизайн
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title="Продукты"
        prodCollection.backgroundColor = .white
        
        // Подписываемся на делегаты и на источники информации
        searchControllerProduct.searchResultsUpdater=self
        
        // Создаем UI дизайн

        searchControllerProduct.obscuresBackgroundDuringPresentation=false
        searchControllerProduct.searchBar.placeholder="Поиск по продуктам"
        navigationItem.searchController=searchControllerProduct
        navigationItem.hidesSearchBarWhenScrolling = false
        
       
        definesPresentationContext=true
      
    }
   
    
    
    // С помощью данного метода будем показывать сколько будет ячеек
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if isFilteringVegProduct{
            return filterProd.allProduct.count
        }
        
        return prodAll.allProduct.count
        
    }
    
    // Реализуем регистрацию ячейки и сортировки по поиску
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionCell=collectionView.dequeueReusableCell(withReuseIdentifier: "prodCellId", for: indexPath) as! ProductCollectionViewCell
        
        let product:ProductModel
        
        if isFilteringVegProduct{
            product=filterProd.allProduct[indexPath.item]
        }else {
            product=prodAll.allProduct[indexPath.item]
        }
        
        
        collectionCell.setCell(prod: product)
        
        return collectionCell
    }
    
    // Создаем UI дизайн
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    // С помощью этого метода будем передавать информацию следующему контроллеру
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyB=UIStoryboard(name: "Main", bundle: .main)
        let viewC=storyB.instantiateViewController(identifier: "InfoProductViewController") as! InfoProductViewController
        
        
        if isFilteringVegProduct{
            viewC.infoProduct=filterProd.allProduct[indexPath.item]
            
        }
        else{
            viewC.infoProduct=prodAll.allProduct[indexPath.item]
        }
        
    
        navigationController?.pushViewController(viewC, animated: true)
        prodCollection.deselectItem(at: indexPath, animated: true)
    
}
    
    // Настройка поиска
    func filterTextVeganProduct(_ search:String){
        filterProd.allProduct=prodAll.allProduct.filter({ (every:ProductModel) in
            return (every.nameProduct?.uppercased().contains(search.uppercased()))!
            
        })
        prodCollection.reloadData()
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        filterTextVeganProduct(searchControllerProduct.searchBar.text!)
    }
}
