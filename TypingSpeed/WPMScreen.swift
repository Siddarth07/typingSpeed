//
//  WPMScreen.swift
//  TypingSpeed
//
//  Created by Siddarth Kethireddy on 6/13/17.
//  Copyright © 2017 Siddarth Kethireddy. All rights reserved.
//

import UIKit

class WPMScreen: UIViewController {
 
    var numCorrectDisplay = 0
    var numWrongDisplay = 0
    var charArray = [0,0]
    
    @IBOutlet weak var numCorrectLabel: UILabel!
    @IBOutlet weak var numWrongLabel: UILabel!
    @IBOutlet weak var GrossWPM: UILabel!
    @IBOutlet weak var NetWPM: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numCorrectLabel.text = String(numCorrectDisplay)
        numWrongLabel.text = String(numWrongDisplay)
        GrossWPM.text = String(calculateGrossWPM())
        if (calculateNetWPM() > 0) {
            NetWPM.text = String(calculateNetWPM())
        }
        else {
            NetWPM.text = "0"
        }
        // Do any additional setup after loading the view.
    }
    
    func calculateGrossWPM() -> Int {
        return Int(charArray[0]/5)
    }
    
    func calculateNetWPM() -> Int {
        let grossWPM = calculateGrossWPM()
        let netWPM = grossWPM - charArray[1]
        return netWPM
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
