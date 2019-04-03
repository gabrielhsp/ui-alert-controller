//
//  ViewController.swift
//  UIAlertController
//
//  Created by Gabriel Henrique Santos Pereira on 03/04/19.
//  Copyright © 2019 Gabriel Henrique Santos Pereira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func criaAlerta() {
        let alerta = UIAlertController(title: "Titulo", message: "Alerta do iOS", preferredStyle: .alert)
        
        alerta.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))
        
        alerta.addAction(UIAlertAction(title: "Trocar cor", style: .default, handler: { (alerta) in
            self.view.backgroundColor = UIColor.red
        }))
        
        self.present(alerta, animated: true, completion: nil)
    }
    
    func criaActionSheet() {
        let alerta = UIAlertController(title: "Titulo", message: "Alerta do iOS", preferredStyle: .actionSheet)
        
        alerta.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))
        
        alerta.addAction(UIAlertAction(title: "Trocar cor", style: .default, handler: { (alerta) in
            self.view.backgroundColor = UIColor.green
        }))
        
        self.present(alerta, animated: true, completion: nil)
    }
    
    @IBAction func actionExibeAlerta(_ sender: Any) {
        self.criaAlerta()
    }
    
    @IBAction func actionExibeActionSheet(_ sender: Any) {
        self.criaActionSheet()
    }
}

