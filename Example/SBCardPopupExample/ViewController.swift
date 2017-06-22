//
//  ViewController.swift
//  SBCardPopupExample
//
//  Created by Steve Barnegren on 22/06/2017.
//  Copyright © 2017 Steve Barnegren. All rights reserved.
//

import UIKit
import SBCardPopup

class ViewController: UIViewController {
    
    // MARK: - Properties
    
    @IBOutlet fileprivate var buttons: [UIButton]!

    // MARK: - UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttons.forEach({
            $0.backgroundColor = UIColor.orange
            $0.layer.cornerRadius = 7
            $0.setTitleColor(UIColor.white, for: .normal)
            $0.titleLabel?.font = UIFont.systemFont(ofSize: 40, weight: UIFontWeightBold)
        })
    
    }
    
    // MARK: - Actions
    
    @IBAction private func example1ButtonPressed(sender: UIButton){
        
        let popupContent = BasicPopupContentViewController.create()
        let cardPopup = SBCardPopupViewController(contentViewController: popupContent)
        cardPopup.show(onViewController: self)
    }
    
    @IBAction private func example2ButtonPressed(sender: UIButton){
        
        let popupContent = PopupContentWithDismissViewController.create()
        let cardPopup = SBCardPopupViewController(contentViewController: popupContent)
        cardPopup.show(onViewController: self)
    }
    
    @IBAction private func example3ButtonPressed(sender: UIButton){
        
        let popupContent = DisableDismissPopupContentViewController.create()
        let cardPopup = SBCardPopupViewController(contentViewController: popupContent)
        cardPopup.show(onViewController: self)
    }
    
    @IBAction private func example4ButtonPressed(sender: UIButton){
        
        let popupContent = ChangeSizePopupContentViewController.create()
        let cardPopup = SBCardPopupViewController(contentViewController: popupContent)
        cardPopup.show(onViewController: self)
    }

}
