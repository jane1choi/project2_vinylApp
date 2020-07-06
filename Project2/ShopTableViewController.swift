//
//  ShopTableViewController.swift
//  Project1
//
//  Created by SWUCOMPUTER on 2020/07/03.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ShopTableViewController: UITableViewController{
    
    var albumArray = ["잔나비 정규 1집 - Monkey Hotel", "Call Me By Your Name(Soundtrack)", "Justin Bieber - changes", "임현식 - RENDEZ-VOUS", "Billie Eilish - Don't Smile At Me", "Chet Baker - Sings", "크러쉬 2집 - From Midnight To Sunrise", "Dua Lipa - Future Nostalgia", "Norah Jones - Don't know Why", "Lady Bird(Soundtrack)", "이문세 4집 - 사랑이 지나가면/깊은 밤을 날아서 ", "잔나비 정규 2집 - 전설", "Love Actually(Soundtrack)", "Notting Hill(Soundtrack)", "Oscar Peterson - We Get Requests" ]
    var imageArray = ["monkeyhotel.jpg", "callme.jpg", "justinlp.jpg", "hyunsik.jpg", "billie2.jpg", "chet.jpg", "crush.jpg", "dualipa.jpg", "jones.jpg", "ladybird.jpg", "lee.jpg", "legend.jpg", "loveact.jpg", "nottinghill.jpg", "oscar.jpg"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        if let name = appDelegate.userName{
            self.navigationController?.navigationBar.topItem?.title = name + "'s Shop"
        }

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return albumArray.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Shop Cell", for: indexPath) as! ShopTableViewCell
        
        cell.nameLabel.text = albumArray[indexPath.row]
        cell.imageLabel.image = UIImage(named: imageArray[indexPath.row])
        
        if cell.nameLabel.adjustsFontSizeToFitWidth == false {
            cell.nameLabel.adjustsFontSizeToFitWidth = true
        }
        
        return cell
        
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toDetailView"{
            if let detailVC = segue.destination as? DetailViewController {
                let path = tableView.indexPathForSelectedRow
                
                detailVC.detailInfo = albumArray[(path?.row)!]
                detailVC.detailImage = imageArray[(path?.row)!] + ".jpg"
            }
        }
        
        
    }
   
}
 
