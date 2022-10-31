//
//  AdditiesViewController.swift
//  Veg Day
//
//  Created by Николай Федоров on 09.03.2022.
//

import UIKit // Подключение фреймворка

class AdditiesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchResultsUpdating {

    
    // Реализуем переменные, которые будут принимать информацию и передавать ее в следующий контроллер

    @IBOutlet var additiesTable: UITableView!
    
    var allA=AdditiesModelBrain()
    var filterA=AdditiesModelBrain()
    
    // Создается поиск
    
    let searchControllerAddit=UISearchController(searchResultsController: nil)
    
    var searchBarAdditIsAbsent:Bool{
        guard let text=searchControllerAddit.searchBar.text else {
            return false
        }
        return text.isEmpty
    }
    var isFilteringVegAddit:Bool{
        return searchControllerAddit.isActive && !searchBarAdditIsAbsent
    }
    
    // Переопределение метода родительского класса
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Подписываемся на делегаты и на источники информации
        additiesTable.dataSource=self
        additiesTable.delegate=self
        
        // Регистрируем ячейку
        additiesTable.register(UINib(nibName: "AdditiesTableViewCell", bundle: nil), forCellReuseIdentifier: "idCell")
        
        // Создаем UI дизайн
        title="Добавки"
        navigationController?.navigationBar.prefersLargeTitles=true
        
        // Подписываемся на делегаты и на источники информации
        searchControllerAddit.searchResultsUpdater=self
        
        // Создаем UI дизайн
        searchControllerAddit.obscuresBackgroundDuringPresentation=false
        searchControllerAddit.searchBar.placeholder="Поиск по добавкам"
        navigationItem.searchController=searchControllerAddit
        definesPresentationContext=true
    }
    
    // С помощью данного метода будем показывать сколько будет ячеек
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if isFilteringVegAddit{
            return filterA.allAddities.count
        }
        
        return allA.allAddities.count
        
    }
    
    // Реализуем регистрацию ячейки и сортировки по поиску
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=additiesTable.dequeueReusableCell(withIdentifier: "idCell", for: indexPath) as! AdditiesTableViewCell
        
        let addit:AdditiesModel
        if isFilteringVegAddit{
            addit=filterA.allAddities[indexPath.row]
        }else {
            addit=allA.allAddities[indexPath.row]
        }
        
        
        cell.setAddities(e: addit)
        return cell
    }

    // С помощью этого метода будем передавать информацию следующему контроллеру
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let st=UIStoryboard(name: "Main", bundle: .main)
        let vc=st.instantiateViewController(identifier: "AddInfoViewController") as! AddInfoViewController
        
      
        
        if isFilteringVegAddit{
            vc.infoAddit=filterA.allAddities[indexPath.row]
            
        }
        else{
            vc.infoAddit=allA.allAddities[indexPath.row]
        }
        
        
    
        navigationController?.pushViewController(vc, animated: true)
        additiesTable.deselectRow(at: indexPath, animated: true)
    }
    
    // Настройка поиска
    func filterTextVeganAddit(_ search:String){
        filterA.allAddities=allA.allAddities.filter({ (every:AdditiesModel) in
            return (every.nameNumber?.uppercased().contains(search.uppercased()))!
            
        })
        additiesTable.reloadData()
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        filterTextVeganAddit(searchControllerAddit.searchBar.text!)
    }

    
    
}
