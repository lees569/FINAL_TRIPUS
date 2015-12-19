//
//  ScrollViewController.swift
//  FINAL_TRIPUS
//
//  Created by SHLEE on 12/12/15.
//  Copyright © 2015 SHLEE. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {

    @IBOutlet var scrollView: UIScrollView!
    override func viewDidLoad() {
        
        super.viewDidLoad()

        
        scrollView.contentInset = UIEdgeInsetsMake(0, 0, 490, 0)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        
        
        
        
        
        self.scrollView.frame = self.view.bounds
        self.scrollView.contentSize.height = 490
        self.scrollView.contentSize.width = 0
        
        
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
