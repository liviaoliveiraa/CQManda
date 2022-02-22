//
//  MapaViewController.swift
//  projeto
//
//  Created by Lívia Oliveira on 20/02/22.
//

import UIKit
import MapKit

class MapaViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapa: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let latitude: CLLocationDegrees = -23.58942
        let longitude: CLLocationDegrees = -46.68001
        
        //define o zoom. quanto menor, mais proximo da visualizacao
        let deltaLatitude: CLLocationDegrees = 0.001
        let deltaLongitude: CLLocationDegrees = 0.001

        //config coordenada 2D
        let localizacao: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        //criando mkcoordinatespan
        let areaVisualizacao: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: deltaLatitude, longitudeDelta: deltaLongitude)
        
        //config região
        let regiao: MKCoordinateRegion = MKCoordinateRegion(center: localizacao, span: areaVisualizacao)
        
        
        mapa.setRegion(regiao , animated: true)
        
        //criando marcador
        let anotacao = MKPointAnnotation()
        
        //configurando anotaçao
        anotacao.coordinate = localizacao
        anotacao.title = "Beco do Espeto"
        anotacao.subtitle = "Bar para quem procura dançar"
        
        mapa.addAnnotation(anotacao)
        
        // ----------------------------------------
        
        let latitude1: CLLocationDegrees = -23.58958
        let longitude1: CLLocationDegrees = -46.68042
        
        //define o zoom. quanto menor, mais proximo da visualizacao
        let deltaLatitude1: CLLocationDegrees = 0.001
        let deltaLongitude1: CLLocationDegrees = 0.001

        //config coordenada 2D
        let localizacao1: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude1, longitude1)
        
        //criando mkcoordinatespan
        let areaVisualizacao1: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: deltaLatitude1, longitudeDelta: deltaLongitude1)
        
        //config região
        let regiao1: MKCoordinateRegion = MKCoordinateRegion(center: localizacao1, span: areaVisualizacao1)
        
        
        mapa.setRegion(regiao1 , animated: true)
        
        //criando marcador
        let anotacao1 = MKPointAnnotation()
        
        //configurando anotaçao
        anotacao1.coordinate = localizacao1
        anotacao1.title = "Bar Aurora"
        anotacao1.subtitle = "Bar para quem procura beber"
        
        mapa.addAnnotation(anotacao1)
        
        // ----------------------------------------
        
        let latitude2: CLLocationDegrees = -23.58991
        let longitude2: CLLocationDegrees = -46.68033
        
        //define o zoom. quanto menor, mais proximo da visualizacao
        let deltaLatitude2: CLLocationDegrees = 0.001
        let deltaLongitude2: CLLocationDegrees = 0.001

        //config coordenada 2D
        let localizacao2: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude2, longitude2)
        
        //criando mkcoordinatespan
        let areaVisualizacao2: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: deltaLatitude2, longitudeDelta: deltaLongitude2)
        
        //config região
        let regiao2: MKCoordinateRegion = MKCoordinateRegion(center: localizacao2, span: areaVisualizacao2)
        
        
        mapa.setRegion(regiao2 , animated: true)
        
        //criando marcador
        let anotacao2 = MKPointAnnotation()
        
        //configurando anotaçao
        anotacao2.coordinate = localizacao2
        anotacao2.title = "Bar Juarez"
        anotacao2.subtitle = "Bar para quem procura se divertir em família"
        
        mapa.addAnnotation(anotacao2)
        

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
