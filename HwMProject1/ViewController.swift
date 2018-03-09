//
//  ViewController.swift
//  HwMProject1
//
//  Created by Skyler Svendsen on 1/9/18.
//  Copyright © 2018 Skyler Svendsen. All rights reserved.
//

import Cocoa

class ViewController: NSSplitViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    //commented out to show how shareClicked can be placed into WindowController and still work
    /*
    @IBAction func shareClicked(_ sender: NSView) {
        guard let detail = childViewControllers[1] as? DetailViewController else { return }
        guard let image = detail.imageView.image else { return }
        
        let picker = NSSharingServicePicker(items: [image])
        picker.show(relativeTo: .zero, of: sender, preferredEdge: .minY)
        
    }
    */

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

