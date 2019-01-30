//
//  ViewController.swift
//  secciones
//
//  Created by Memo Figueredo on 1/29/19.
//  Copyright © 2019 Memo Figueredo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //conectores
    
    //primer emojis
    @IBOutlet weak var primerSeguemento: UISegmentedControl!
    
    @IBOutlet weak var labelPrimeraRespuesta: UILabel!
    
    //segundos emojis
    @IBOutlet weak var segundoSegmento: UISegmentedControl!
    
    @IBOutlet weak var segundaRespuestaLabel: UILabel!
    
    
    @IBOutlet weak var mostrarImagen: UIImageView!
    
    
    //primeras respuestas
    let primerasEmojisEscogidos = [
        
        OpcionesEmoji(emoji: "🛁", caption: "sabes qué es genial?" ),
        OpcionesEmoji(emoji: "🤬", caption: "sabes qué me hace enojar?"),
        OpcionesEmoji(emoji: "🥰", caption: "sabes qué me encanta?")
        
     ]
    
    let segundosEmojisEscogidos = [
        
        OpcionesEmoji(emoji: "🌈", caption: "ver un arcoiris"),
        OpcionesEmoji(emoji: "👨🏼‍💻", caption: "que el codigo no funcione"),
        OpcionesEmoji(emoji: "🍔", caption: "comer una hamburguesa")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //elemina todos los seguementos
        primerSeguemento.removeAllSegments()
        // crea los nuevos seguementos en este caso 3
        for choice in primerasEmojisEscogidos {
            primerSeguemento.insertSegment(withTitle: choice.emoji, at: primerasEmojisEscogidos.count, animated: false)
        }
        
        primerSeguemento.selectedSegmentIndex = 0
        
        segundoSegmento.removeAllSegments()
        for choiceDos in segundosEmojisEscogidos {
            segundoSegmento.insertSegment(withTitle: choiceDos.emoji, at: segundosEmojisEscogidos.count, animated: false)
        }
        
        segundoSegmento.selectedSegmentIndex = 0
        
        actulizarLabels()
        
        //ajusta los labels
        labelPrimeraRespuesta.adjustsFontSizeToFitWidth = true
        segundaRespuestaLabel.adjustsFontSizeToFitWidth = true
    }

    @IBAction func seleccionarEmoji(_ sender: Any) {
        
        actulizarLabels()
    }
    
    //funcion actualizar labels
    //actualiza el menseja caption
    func actulizarLabels(){
        
        let seleccionarTopIndex = primerSeguemento.selectedSegmentIndex
        let botonSeleccionarIndex = segundoSegmento.selectedSegmentIndex
        
        labelPrimeraRespuesta.text = primerasEmojisEscogidos[seleccionarTopIndex].caption
        segundaRespuestaLabel.text = segundosEmojisEscogidos[botonSeleccionarIndex].caption
    }
    
}

