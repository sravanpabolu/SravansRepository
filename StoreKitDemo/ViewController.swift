//
//  ViewController.swift
//  StoreKitDemo
//
//  Created by Sravan on 22/08/15.
//  Copyright (c) 2015 Sravan. All rights reserved.
//

import UIKit
import StoreKit 

class ViewController: UIViewController, SKStoreProductViewControllerDelegate {
    
    /*
    let itunesIdentifier = "http://itunes.apple.com/us/movie/the-pirates!-band-of-misfits/id527049179"

    http://www.techotopia.com/index.php/Making_Store_Purchases_with_the_SKStoreProductViewController_Class

    
    let storeViewController = SKStoreProductViewController()
    storeViewController.delegate = self
    
    let parameters = [SKStoreProductParameterITunesItemIdentifier :
    NSNumber(integer: 676059878)]
    
    storeViewController.loadProductWithParameters(parameters,
    completionBlock: {result, error in
    if result {
    self.presentViewController(storeViewController,
    animated: true, completion: nil)
    }
    
    })

    */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func updateAppBtnTapped(sender: AnyObject) {
        let parameters = [SKStoreProductParameterITunesItemIdentifier: String("333700869")]
        let spvc = SKStoreProductViewController() ;
        spvc.delegate = self
        spvc.loadProductWithParameters(parameters, completionBlock: nil)
        self.presentViewController(spvc, animated: true, completion: nil)
    }
    
    func productViewControllerDidFinish(viewController: SKStoreProductViewController) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}

