//
//  SearchView.swift
//  LastMinuteFlight
//
//  Created by Barak M on 3/27/15.
//  Copyright (c) 2015 Barak M. All rights reserved.
//

import UIKit

class SearchView: UIViewController {

    @IBOutlet var searchPopup: UIView!
    @IBOutlet var searchSummary: UIView!
    @IBOutlet var searchView: UIView!
    
    var searched = false
    
    
    var tapGesture:UITapGestureRecognizer = UITapGestureRecognizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "AirHop"
        
        searchViewGlobal = self
        
        tapGesture = UITapGestureRecognizer()
        tapGesture.addTarget(self, action: "toggleSearch")
        searchSummary.addGestureRecognizer(tapGesture)
        
        //searchView.hidden = true
        
        // Do any additional setup after loading the view.
    }
    
    func search() {
//        searchView.hidden = false
//        searched = true
//        toggleSearch()
    }
    
    func toggleSearch() {
        searchPopup.hidden = !searchPopup.hidden
        
        UIView.animateWithDuration(0.2, animations: {
            if(self.searchPopup.hidden) {
                self.searchView.userInteractionEnabled = true
                self.searchView.alpha = 1
                self.searchPopup.alpha = 0
            } else {
                self.searchView.userInteractionEnabled = false
                self.searchView.alpha = 0.3
                self.searchPopup.alpha = 1
            }
        })
        
        
    }
    
    func hideSearch() {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //println(segue.
//        if (segue.destinationViewController is UITableViewController) {
//            (segue.destinationViewController as ResultList).searchView = self
//        }
    }


}
