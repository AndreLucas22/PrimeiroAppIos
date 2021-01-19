//
//  Alimento.swift
//  ListFood
//
//  Created by André Lucas on 14/01/21.
//

import Foundation

enum Categoria {
    
    case alimento
    case limpeza
}

class Produto {
    
    var nome: String?
    var categoria: Categoria?
    var peso: Float?
    var preco: Float?
    var vegano: Bool?
    var calorias: Float?
    var litros: Float?
    
    init(nome: String?, categoria: Categoria?, peso: Float?, preco: Float?, vegano: Bool?, calorias: Float?, litros: Float?) {
        self.nome = nome
        self.categoria = categoria
        self.peso = peso
        self.preco = preco
        self.vegano = vegano
        self.calorias = calorias
        self.litros = litros
    }
    
}
