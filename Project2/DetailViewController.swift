//
//  DetailViewController.swift
//  Project1
//
//  Created by SWUCOMPUTER on 2020/07/04.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit


class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    
    
    var detailInfo: String?
    var detailImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        titleLabel.text = detailInfo
        imageView.image = UIImage(named: detailImage!)
    }
    
    @IBAction func gimbab(_ sender: UIButton) {
        if let url = URL(string: "http://gimbabrecords.com") {
            UIApplication.shared.open(url, options: [:])
        }
    }
    
    @IBAction func seoul(_ sender: UIButton) {
        if let url = URL(string: "https://www.seoulvinyl.com") {
                   UIApplication.shared.open(url, options: [:])
               }
    }
    @IBAction func yes24(_ sender: UIButton) {
        if let url = URL(string: "http://www.yes24.com/24/Category/Display/003001033") {
                   UIApplication.shared.open(url, options: [:])
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
