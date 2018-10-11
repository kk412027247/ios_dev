//
//  ViewController.swift
//  vocalTextEdit
//
//  Created by tmd on 2018/10/11.
//  Copyright © 2018年 tmd. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    let speechSynthesizer = NSSpeechSynthesizer()
    
    @IBOutlet var textView: NSTextView!
    
    @IBAction func speakButtonClicked(_ sender: NSButton){
        let contents = textView.string
        if contents.isEmpty{
            speechSynthesizer.startSpeaking("The Document is empty")
        }else{
            speechSynthesizer.startSpeaking(contents)
        }
    }
    
    @IBAction func stopBUttonClicked(_ sender: NSButton){
       speechSynthesizer.stopSpeaking()
    }
    
}

