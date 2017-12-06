//
//  ViewController.swift
//  Adidas App
//
//  Created by Luthfi Aly on 12/6/17.
//  Copyright © 2017 Luthfialy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var AdidasWeb: UIWebView!
    
    //deklarasi url web
    let urlWeb = "https://www.adidas.com"
    
    //karena di iOS hanya support https, maka di bagian info.plist kita tambahkan allow arbitory loads.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //deklarasi urlRequest
        let requestURL = NSURL(string: urlWeb)
        
        //deklarasi request
        let request = NSURLRequest(url: requestURL! as URL)
        AdidasWeb.loadRequest(request as URLRequest)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

