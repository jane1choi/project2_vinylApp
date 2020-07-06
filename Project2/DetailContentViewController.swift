//
//  DetailContentViewController.swift
//  Project1
//
//  Created by SWUCOMPUTER on 2020/07/05.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit
import CoreData

class DetailContentViewController: UIViewController {
    @IBOutlet var titleLabel: UITextField!
    @IBOutlet var contentLabel: UITextView!
    @IBOutlet var saveDate: UITextField!
    
    var detailWrite: NSManagedObject?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let writes = detailWrite{
            titleLabel.text = writes.value(forKey: "title") as? String
            contentLabel.text = writes.value(forKey: "content") as? String
            let dbDate: Date? = writes.value(forKey: "saveDate") as? Date
            
            let formatter: DateFormatter = DateFormatter()
            formatter.dateFormat = "yyyy-MM-dd h:mm a"
            if let unwrapDate = dbDate {
                saveDate.text = formatter.string(from: unwrapDate as Date)
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
