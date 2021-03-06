//
//  MyTableViewController.swift
//  AppTesteMV
//
//  Created by Fabio Lindemberg on 14/02/19.
//  Copyright © 2019 Fábio Lindemberg. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {

    var posts: [Post] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        let urlString = "https://jsonplaceholder.typicode.com/posts"
        
        if let url = URL(string: urlString) {
            
            let task = URLSession.shared.dataTask(with: url) { (data, urlResponse, error) in
                
                if error == nil {
                    
                    if let data = data {
                        
                        do{
                            if let jsonObjects = try JSONSerialization.jsonObject(with: data, options: []) as? [Any] {
                                
                                for jsonObject in jsonObjects {
                                    if let item = jsonObject as? [String: Any] {
                                        self.posts.append(Post(userId: item["userId"] as! Int, id: item["id"] as! Int, title: item["title"] as! String, body: item["body"] as! String))
                                    }
                                }
                                
                                self.tableView.reloadData()
                            }
                        }catch{
                            print("Erro")
                        }

                    }
                    
                }else{
                    print(error)
                }
                
            }
            //task.resume()
        }
        */
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return posts.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as? MyTableViewCell

        // Configure the cell...
        //cell.textLabel?.text = posts[indexPath.row].title
        //cell.detailTextLabel?.text = posts[indexPath.row].body
        cell!.lbTitle.text = posts[indexPath.row].title
        cell!.lbBody.text = posts[indexPath.row].body

        return cell!
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
