//
//  ViewController.swift
//  ListFood
//
//  Created by André Lucas on 14/01/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet weak var pesoTextField: UITextField!
    @IBOutlet weak var precoTextField: UITextField!
    @IBOutlet weak var caloriasTextField: UITextField!
    @IBOutlet weak var litrosTextField: UITextField!
    
    @IBOutlet weak var categoriaSegmented: UISegmentedControl!
    @IBOutlet weak var isVeganoSegmented: UISegmentedControl!
    
    @IBOutlet weak var cadastrar: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nomeTextField.delegate = self
        self.pesoTextField.delegate = self
        self.precoTextField.delegate = self
        self.caloriasTextField.delegate = self
        self.litrosTextField.delegate = self
        
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
        self.view.addGestureRecognizer(tap)
        
        // Do any additional setup after loading the view.
    }

    func dismissKeyboard() {
        self.view.endEditing(true)
//        self.nomeTextField.resignFirstResponder()
//        self.pesoTextField.resignFirstResponder()
//        self.precoTextField.resignFirstResponder()
//        self.caloriasTextField.resignFirstResponder()
//        self.litrosTextField.resignFirstResponder()
        
    }
    @IBAction func selecionouCategoria(_ sender: UISegmentedControl) {
        self.dismissKeyboard()
    }
    
    @IBAction func selecionouTipoDeAliemento(_ sender: UISegmentedControl) {
        self.dismissKeyboard()
    }
    
    @IBAction func clicouCadastrar(_ sender: UIButton) {
        self.dismissKeyboard()
    }
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

