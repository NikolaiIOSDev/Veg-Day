//
//  VeganMapViewController.swift
//  Veg Day
//
//  Created by Николай Федоров on 20.05.2022.
//

import UIKit
import MapKit // Подключение фреймворка


class VeganMapViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {

    // Привязка переменной
    @IBOutlet var vegMap: MKMapView!
    
    let myVegLocation=CLLocationManager()
    
    //Создание переменной модели
    var vegPosition=MapModelBrain()

    // Переопределение метода родительского класса
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Подписываемся на делегаты
        vegMap.delegate=self
        
        // Проходимся циклом по объектам массива
        for position in vegPosition.allPosition{
            vegMap.addAnnotation(position)
        }
        
    
        
    }
    
    // Переопределение метода родительского класса
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        locationOn()
    }
    
    // Проверка геолокации
    func locationOn(){
        if CLLocationManager.locationServicesEnabled(){
            entranceMap()
            settingLocation()
        } else {
            settingAllertAction(title: "Выключена геолокация", message: "Желаете включить?", urlVeg: URL(string: "App-Prefs:root=LOCATION_SERVICES"))
        }
    }
    
    // Настройка локации
    func settingLocation(){
        myVegLocation.delegate=self
        myVegLocation.desiredAccuracy=kCLLocationAccuracyBest
    }
  
    // Настройка уведомления
    func settingAllertAction(title:String,message:String?,urlVeg:URL?){
        let allertVeg=UIAlertController(title: title, message: message, preferredStyle: .alert)
        let allertVegAction=UIAlertAction(title: "Настройки", style: .default) { (alertVeg) in
            if let urlVeg = urlVeg{
                UIApplication.shared.open(urlVeg, options: [:], completionHandler: nil)
            }
        }
        let okAction=UIAlertAction(title: "Отмена", style: .cancel, handler: nil)
        
        allertVeg.addAction(okAction)
        allertVeg.addAction(allertVegAction)
        
        present(allertVeg, animated: true, completion: nil)
    }
    
    // Через оператор управления проверям статус геопозиции
    func entranceMap(){
        switch CLLocationManager.authorizationStatus() {
        case .authorizedAlways:
            break
        case .authorizedWhenInUse:
            vegMap.showsUserLocation=true
            myVegLocation.startUpdatingLocation()
            break
        case .denied:
            settingAllertAction(title: "Вы не разрешили запрос на использование данных о вашем местоположении", message: "Разрешить?", urlVeg: URL(string:UIApplication.openSettingsURLString))
            break
        case .restricted:
            break
        case .notDetermined:
            myVegLocation.requestWhenInUseAuthorization()
        default:
            break
        }
    }
    
    // Метод перемещает карту, где находится пользователь
   
    @IBAction func myLocationRadius(_ sender: UIBarButtonItem) {
       
        vegMap.setCenter(vegMap.userLocation.coordinate, animated: true)
         
        }
    
    
    // Статус геопозиции
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        entranceMap()
    }

    // Создаем маркеры, где находятся заведения
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        guard let vegAnnotat=annotation as? MapModel else {
            return nil
        }
        var vegGreenMarker:MKMarkerAnnotationView
        if let vegView=vegMap.dequeueReusableAnnotationView(withIdentifier: "vegMarker") as? MKMarkerAnnotationView{
            vegView.annotation=annotation
            vegGreenMarker=vegView
            vegGreenMarker.markerTintColor = .systemGreen

        } else{
            vegGreenMarker=MKMarkerAnnotationView(annotation: vegAnnotat, reuseIdentifier: "vegMarker")
            vegGreenMarker.calloutOffset=CGPoint(x: 0, y: 3)
            vegGreenMarker.rightCalloutAccessoryView=UIButton(type: .infoDark)
            vegGreenMarker.canShowCallout=true
            vegGreenMarker.markerTintColor = .systemGreen
        }
        return vegGreenMarker
    }
    
    // Создаем маршрут до заведения
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        guard let vegCoord=myVegLocation.location?.coordinate else {
            return
        }
        let vegan=view.annotation as! MapModel
        let start=MKPlacemark(coordinate: vegCoord)
        let finish=MKPlacemark(coordinate: vegan.coordinate)
        
        self.vegMap.removeOverlays(vegMap.overlays)
        
        let execute=MKDirections.Request()
        
        execute.transportType = .automobile
        execute.source=MKMapItem(placemark: start)
        execute.destination=MKMapItem(placemark: finish)
        
        let whereDirection=MKDirections(request: execute)
        whereDirection.calculate { (response,error) in
            guard let vegResponse=response else {return}
            for road in vegResponse.routes{
                self.vegMap.addOverlay(road.polyline)
            }
            
        }
    }
    
    // Отклоняет построение маршрута
    @IBAction func cancelAction(_ sender: UIBarButtonItem) {
        self.vegMap.removeOverlays(vegMap.overlays)
    }
    
    // Меняем интерфейс линии маршрута
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        let greenRender=MKPolylineRenderer(overlay: overlay)
        greenRender.lineWidth = 8
        greenRender.strokeColor = .systemGreen
        
        
        return greenRender
    }
    
    
}
