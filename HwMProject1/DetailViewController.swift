//
//  DetailViewController.swift
//  HwMProject1
//
//  Created by Skyler Svendsen on 1/9/18.
//  Copyright © 2018 Skyler Svendsen. All rights reserved.
//

import Cocoa

class DetailViewController: NSViewController {

    @IBOutlet var imageView: NSImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    func imageSelected(name: String) {
        imageView.image = NSImage(named: NSImage.Name(name))
    }
    
}
