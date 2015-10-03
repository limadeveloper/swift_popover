//
//  PopoverViewController.swift
//  Popover
//
//  Created by John Lima on 10/3/15.
//  Copyright © 2015 John Lima. All rights reserved.
//

import UIKit

class PopoverViewController: UIViewController {

    // MARK: - Properties
    @IBOutlet var textView: UITextView!
    
    var text: String = String()
    
    // MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    // MARK: - Actions
    func setView() {
        
        textView.editable = false
        textView.backgroundColor = UIColor.blackColor()
        textView.textColor = UIColor.whiteColor()
        textView.text = text
        
        view.backgroundColor = UIColor.blackColor()
        
    }

}
