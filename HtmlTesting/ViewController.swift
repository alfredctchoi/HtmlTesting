//
//  ViewController.swift
//  HtmlTesting
//
//  Created by Alfred Choi on 2017-07-04.
//  Copyright © 2017 Alfred Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let html = "<ul><li>testing</li></ul>"
        if let data = html.data(using: .unicode) {
            let paraStyle = NSMutableParagraphStyle()
            let options: [String: Any] = [
                NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType,
                NSParagraphStyleAttributeName: paraStyle
            ]
            do {
                let attributedString = try NSAttributedString(data: data, options: options, documentAttributes: nil)
                textView.attributedText = attributedString
            } catch {}
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

