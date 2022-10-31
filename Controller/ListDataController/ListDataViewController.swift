//
//  ListDataViewController.swift
//  Veg Day
//
//  Created by Николай Федоров on 19.05.2022.
//

import UIKit
import CoreData // Подключение фреймворка

class ListDataViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
 {
    
    
    // Переменная, которая связывает программный код с раскадровкой
    @IBOutlet var listDataTableView: UITableView!
    // Массив данных
    var myProduct: [NSManagedObject] = []
    
    
    
    // Переопределение метода родительского класса
    override func viewDidLoad() {
        super.viewDidLoad()
        listDataTableView.dataSource=self
        listDataTableView.delegate=self
        
        // Создаем UI дизайн
        navigationController?.navigationBar.prefersLargeTitles=true
        title = "Список покупок"
        
        // Регистрируем ячейку
        listDataTableView.register(UITableViewCell.self, forCellReuseIdentifier: "productListCell")
    }
    
    // Переопределение метода родительского класса
    override func viewWillAppear(_ animated: Bool)
    {
      super.viewWillAppear(animated)

      guard let appVegDeleg = UIApplication.shared.delegate as? AppDelegate else {
        return
      }

      let vegText = appVegDeleg.persistentContainer.viewContext
      let vegReq = NSFetchRequest<NSManagedObject>(entityName: "List")

      do {
        myProduct = try vegText.fetch(vegReq)
      } catch let errorList as NSError {
        print("Не удалось принять данные. \(errorList), \(errorList.userInfo)")
      }
    }
    
    // С помощью данного метода будем показывать сколько будет ячеек
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myProduct.count

    }
    
    // Реализуем регистрацию ячейки и сортировки по поиску
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let product = myProduct[indexPath.row]
        let cellProduct = tableView.dequeueReusableCell(withIdentifier: "productListCell", for: indexPath)
        cellProduct.textLabel?.text = product.value(forKeyPath: "nameList") as? String
        return cellProduct
    }
    
    // Данный метод отменяет выбор ячейки по нажатию на нее
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        listDataTableView.deselectRow(at: indexPath, animated: true)
    }
    
    // Метод сохраняет записи пользователя
    func saveListProductVeg(name: String)
    {
      guard let appVegDeleg = UIApplication.shared.delegate as? AppDelegate else {
        return
      }

      let vegText = appVegDeleg.persistentContainer.viewContext
      let vegEntity = NSEntityDescription.entity(forEntityName: "List", in: vegText)!
      let product = NSManagedObject(entity: vegEntity, insertInto: vegText)
      product.setValue(name, forKeyPath: "nameList")

      do {
        try vegText.save()
        myProduct.append(product)
      } catch let errorList as NSError {
        print("Не удалось сохранить данные. \(errorList), \(errorList.userInfo)")
      }
    }
    
    // Данный метод является связанным с кнопкой в панели навигации экрана, метод удаляет данные
    @IBAction func clearProduct(_ sender: UIBarButtonItem) {
        let appVegDeleg=UIApplication.shared.delegate as! AppDelegate
        let vegText=appVegDeleg.persistentContainer.viewContext
        
        let vegReq:NSFetchRequest<List>=List.fetchRequest()
        
        if (try? vegText.fetch(vegReq)) != nil{
            for full in myProduct{
                vegText.delete(full)
            }
        }
        do {
            try vegText.save()
        } catch let errorList as NSError{
            print(errorList.localizedDescription)
        }
        listDataTableView.reloadData()
    }
    
    // Данный метод является связанным с кнопкой в панели навигации экрана, метод сохраняет данные

    @IBAction func addListProductVeg(_ sender: UIBarButtonItem) {
        let alertProduct = UIAlertController(title: "Введите товар" ,message: "Добавить", preferredStyle: .alert)

        let allertProductSaveAction = UIAlertAction(title: "Сохранить", style: .default) { [unowned self] action in

          guard let textList = alertProduct.textFields?.first,
            let productSaveList = textList.text else {
              return
          }

            self.saveListProductVeg(name: productSaveList)
          self.listDataTableView.reloadData()
        }

        let allertProductCancelAction = UIAlertAction(title: "Закрыть", style: .cancel)
        alertProduct.addTextField()
        alertProduct.addAction(allertProductSaveAction)
        alertProduct.addAction(allertProductCancelAction)

            present(alertProduct, animated: true)
        

        
      }
        
          }
    


        
    

