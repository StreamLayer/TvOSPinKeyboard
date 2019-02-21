//
//  ViewController.swift
//  TvOSPinKeyboardExample
//
//  Created by David Cordero on 08.08.17.
//  Copyright © 2017 David Cordero. All rights reserved.
//

import UIKit
import TvOSPinKeyboard

class ViewController: UIViewController, TvOSPinKeyboardViewDelegate {
    var pinKeyboard: TvOSPinKeyboardViewController!
    @IBOutlet private weak var pinLabel: UILabel!
    
    @IBAction func pinButtonWasPressed(_ sender: Any) {
        pinKeyboard = TvOSPinKeyboardViewController(withTitle: "Introduce your PIN", message: "A pin code is required")
        pinKeyboard.buttonsFocusedBackgroundColor = .gray
        pinKeyboard.buttonsNormalBackgroundColor = .clear
        pinKeyboard.deleteButtonTitle = "←"
        
        let backgroundBlurEffectSyle = UIBlurEffect(style: .extraDark)
        pinKeyboard.backgroundView = UIVisualEffectView(effect: backgroundBlurEffectSyle)
        
        pinKeyboard.delegate = self
        
        present(pinKeyboard, animated: true, completion: nil)
        afterDelay()
    }

    //test update title for button requestNewPinButton
    private func afterDelay() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0, execute: {
            print("title was: \(self.pinKeyboard.requestNewPinButtonTitle)")
            self.pinKeyboard.requestNewPinButtonTitle = "title: \(Int.random(in: 0..<10))"
            self.afterDelay()
        })
    }

    // MARK: - TvOSPinKeyboardViewDelegate
    
    func pinKeyboardDidEndEditing(pinCode: String) {
        pinLabel.text = "Your Pin Code is: " + pinCode
    }
}
