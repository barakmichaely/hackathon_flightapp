//
//  Navigation.swift
//  LastMinuteFlight
//
//  Created by Barak M on 3/27/15.
//  Copyright (c) 2015 Barak M. All rights reserved.
//

import UIKit

class Navigation: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var titleColor = UIColor(white: 255, alpha: 1)
        
        self.navigationBar.barTintColor = UIColor(red: 39/255, green: 146/255, blue: 197/255, alpha: 1)
        self.navigationBar.tintColor = UIColor.whiteColor()

        self.navigationBar.titleTextAttributes = NSDictionary(objectsAndKeys:
            UIFont(name: "Helvetica", size: 18.0)!, NSFontAttributeName,
            titleColor, NSForegroundColorAttributeName)
        
        // Do any additional setup after loading the view.
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
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
