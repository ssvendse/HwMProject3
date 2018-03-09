//
//  WindowController.swift
//  HwMProject1
//
//  Created by Skyler Svendsen on 3/8/18.
//  Copyright © 2018 Skyler Svendsen. All rights reserved.
//

import Cocoa

class WindowController: NSWindowController {
    @IBOutlet var shareButton: NSButton!
    
    override func windowDidLoad() {
        super.windowDidLoad()
        shareButton.sendAction(on: .leftMouseDown)
    }

    //if you want shareClicked handled in the window controller, you need extra guard statement here
    @IBAction func shareClicked(_ sender: NSView) {
        guard let split = contentViewController as? NSSplitViewController else { return }
        guard let detail = split.childViewControllers[1] as? DetailViewController else { return }
        guard let image = detail.imageView.image else { return }
        
        let picker = NSSharingServicePicker(items: [image])
        picker.show(relativeTo: .zero, of: sender, preferredEdge: .minY)
        
    }
    
}
