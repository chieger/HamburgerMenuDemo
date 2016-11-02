//
//  ViewController.swift
//  HamburgerDemoTwo
//
//  Created by Charlie Hieger on 11/1/16.
//  Copyright © 2016 Charlie Hieger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backContainerView: UIView!

    @IBOutlet weak var frontContainerView: UIView!

    var greenView: UIView!
    var redView: UIView!

    var main = UIStoryboard(name: "Main", bundle: nil)
    override func viewDidLoad() {
        super.viewDidLoad()

        let greenViewController = main.instantiateViewController(withIdentifier: "GreenViewController")
        let redViewController = main.instantiateViewController(withIdentifier: "RedViewController")
        greenViewController.view.frame = backContainerView.bounds
        backContainerView.addSubview(redViewController.view)
        redViewController.view.frame = frontContainerView.bounds
        frontContainerView.addSubview(greenViewController.view)


    }

    @IBAction func didPanTopView(_ sender: UIPanGestureRecognizer) {

        let translation = sender.translation(in: view)

        frontContainerView.transform = frontContainerView.transform.translatedBy(x: translation.x, y: 0)
        sender.setTranslation(CGPoint.zero, in: view)

        print("Hello")
    }



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

