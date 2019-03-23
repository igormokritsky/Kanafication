//
//  AfterTransformationViewController.swift
//  Kanafication
//
//  Created by Ihor Mokrytskyi on 3/10/19.
//  Copyright © 2019 Ihor Mokrytskyi. All rights reserved.
//

import UIKit
import Foundation


protocol AfterTransformationViewControllerDelegate {
    func textForDetail() -> String
}

protocol SecondAfterTransformationViewControllerDelegate {
    func helpingText() -> String
    
}

class AfterTransformationViewController: UIViewController {
    
    var delegate: AfterTransformationViewControllerDelegate?
    
    var helpTextDelegate: SecondAfterTransformationViewControllerDelegate?
   
    
    @IBOutlet weak var transformedTextView: UITextView!
    @IBOutlet weak var helpingTextView: UITextView!

    @IBOutlet var mainScrollView: UIScrollView!
    
    @IBOutlet var starButton: UIButton!
    
    
    
    @IBAction func starButtonPressed(_ sender: Any) {
      
        if starButton.isSelected {
            starButton.isSelected = false
        } else {
            starButton.isSelected = true
        }
    }
    
    @IBOutlet var textStackView: UIStackView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        mainScrollView.translatesAutoresizingMaskIntoConstraints = false
        transformedTextView.translatesAutoresizingMaskIntoConstraints = false
        helpingTextView.translatesAutoresizingMaskIntoConstraints = false
        textStackView.translatesAutoresizingMaskIntoConstraints = false
        
        mainScrollView.addSubview(textStackView)
        self.view.addSubview(mainScrollView)
        

        mainScrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 15.0).isActive = true
        mainScrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -15.0).isActive = true


        textStackView.topAnchor.constraint(equalTo: mainScrollView.topAnchor, constant: 8.0).isActive = true
        textStackView.leadingAnchor.constraint(equalTo: mainScrollView.leadingAnchor, constant: 8.0).isActive = true
        textStackView.trailingAnchor.constraint(equalTo: mainScrollView.trailingAnchor, constant: -8.0).isActive = true
        textStackView.bottomAnchor.constraint(equalTo: mainScrollView.bottomAnchor, constant: -8.0).isActive = true


        textStackView.widthAnchor.constraint(equalTo: mainScrollView.widthAnchor, constant: -16.0).isActive = true
        
        

        
        
        if let text = delegate?.textForDetail() {
            transformedTextView.text = text
        }
        
        if let helpingText = helpTextDelegate?.helpingText(){
            helpingTextView.text = helpingText
        }
        
        

        
        
        var frame = self.transformedTextView.frame
        frame.size.height = self.transformedTextView.contentSize.height
        self.transformedTextView.frame = frame
        
        var frameHelp = self.helpingTextView.frame
        frameHelp.size.height = self.helpingTextView.contentSize.height
        self.helpingTextView.frame = frameHelp
        
        
        starButton.setImage(UIImage(named: "starred2"), for: .normal)
        starButton.setImage(UIImage(named: "starred1"), for: .selected)
        
       
        
        
        
      
    }
    
 
}








