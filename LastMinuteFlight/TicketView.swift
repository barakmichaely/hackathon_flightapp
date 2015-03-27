//
//  TicketView.swift
//  LastMinuteFlight
//
//  Created by Barak M on 3/27/15.
//  Copyright (c) 2015 Barak M. All rights reserved.
//

import UIKit

class TicketView: UIViewController {

    @IBAction func back(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    @IBOutlet var accountButton: UIView!
    @IBOutlet var bookButton: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        var tapGesture1 = UITapGestureRecognizer()
        tapGesture1.addTarget(self, action: "book")
        bookButton.addGestureRecognizer(tapGesture1)
        
        var tapGesture2 = UITapGestureRecognizer()
        tapGesture2.addTarget(self, action: "account")
        accountButton.addGestureRecognizer(tapGesture2)
        
        // Do any additional setup after loading the view.
    }
    
    func book () {
        searchViewGlobal?.navigationController?.popViewControllerAnimated(false)
        searchViewGlobal?.navigationController?.pushViewController(self.storyboard!.instantiateViewControllerWithIdentifier("confirmation") as UIViewController, animated: false)
        
    }
    
    func account () {
        self.navigationController!.showDetailViewController(self.storyboard!.instantiateViewControllerWithIdentifier("account") as UIViewController, sender: self)
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
