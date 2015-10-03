//
//  ViewController.swift
//  Popover
//
//  Created by John Lima on 10/3/15.
//  Copyright © 2015 John Lima. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    // MARK: - Properties
    
    // MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    // MARK: - Segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let popover = segue.destinationViewController as UIViewController
        let controller = popover.presentationController
        if controller != nil {
            controller?.delegate = self
            popover.popoverPresentationController?.backgroundColor = UIColor.blackColor() // change arrow color
        }
        
        let vc = segue.destinationViewController as! PopoverViewController
        switch segue.identifier! {
        case "popover1": vc.text = "Popover 1"
        case "popover2": vc.text = "Popover 2"
        case "popover3": vc.text = "Popover 3"
        case "popover4": vc.text = "Popover 4"
        case "popover5": vc.text = "Popover 5"
        default: vc.text = ""
        }
        
    }
    
    // MARK: Popover delegate
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return .None
    }

}

