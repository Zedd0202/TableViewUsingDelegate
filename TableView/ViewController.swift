//
//  ViewController.swift
//  TableView
//
//  Created by Zedd on 2017. 6. 22..
//  Copyright © 2017년 Zedd. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let cellIndentifier = "your cell Identifier"
    
    let arr = ["A","B","C","D","E"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate =  self
        tableView.dataSource = self
    self.tableView.register(UITableViewCell.self,forCellReuseIdentifier: cellIndentifier)
        
   }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return arr.count
    }
    
    
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell : UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: cellIndentifier , for: indexPath)
        
        cell.textLabel?.text = arr[indexPath.row]
        
        return cell
    }

}

