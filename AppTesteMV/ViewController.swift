//
//  ViewController.swift
//  AppTesteMV
//
//  Created by Fabio Lindemberg on 14/02/19.
//  Copyright © 2019 Fábio Lindemberg. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    let URL_API = "https://jsonplaceholder.typicode.com/posts"
    var posts: [Post] = []
    
    @IBOutlet weak var btnLoadAndShow: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        loadAListOfPostFromWebAPI()
    }

    private func loadAListOfPostFromWebAPI() {
        
        let spinner = UIActivityIndicatorView(style: .whiteLarge)
        let task = URLSession.shared.dataTask(with: URL(string: URL_API)!) { (data, response, error) in
            // with no error
            if error == nil {
                
                if let data = data {
                    do{
                        if let jsonObjects = try JSONSerialization.jsonObject(with: data, options: []) as? [Any] {
                            
                            for jsonObject in jsonObjects {
                                if let item = jsonObject as? [String: Any] {
                                    self.posts.append(Post(userId: item["userId"] as! Int, id: item["id"] as! Int, title: item["title"] as! String, body: item["body"] as! String))
                                }
                            }
                            spinner.stopAnimating()
                        }
                    }catch{
                        print("Erro ao tentar converter o JSON para Objeto")
                    }
                }
                
            }else{
                print(error!)

            }
        }
        spinner.translatesAutoresizingMaskIntoConstraints = false
        spinner.startAnimating()
        self.view.addSubview(spinner)
        
        spinner.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        spinner.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        task.resume()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "theChosenOne" {
            if let destination = segue.destination as? MyTableViewController {
                destination.posts = self.posts
            }
        }
    }
    
    @IBAction func onClick(_ sender: Any) {
 
    }
}

