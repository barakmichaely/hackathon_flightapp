//
//  SellView.swift
//  LastMinuteFlight
//
//  Created by Barak M on 3/27/15.
//  Copyright (c) 2015 Barak M. All rights reserved.
//

import UIKit

class SellView: UIViewController, UITextFieldDelegate {

    @IBOutlet var textFields: [UITextField]!
    
    @IBOutlet var sellButton: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var tapGesture = UITapGestureRecognizer()
        tapGesture.addTarget(self, action: "post")
        sellButton.addGestureRecognizer(tapGesture)
        
        for v in self.textFields {
                v.userInteractionEnabled = false
                //v.delegate = self
        }
        
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        return true
    }

    func post() {
        self.showViewController(self.storyboard!.instantiateViewControllerWithIdentifier("posted") as UIViewController, sender: self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
