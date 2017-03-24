//
//  ViewController.swift
//  TableView
//
//  Created by iFlame on 22/03/17.
//  Copyright © 2017 IFlame. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate {

    var actors : [String]!
    @IBOutlet var tableView : UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //tableView.style = .grouped
        
        actors = ["aamir","ajay","amitabh","anil","hrithik","salman","shahrukh","varun"]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    func tableView(_ tableView:UITableView,numberOfRowsInSection numberOfRowInSection:Int) -> Int {
        print("numberOfRowInSection ==>> \(numberOfRowInSection)")
        return 20
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        ////MARK:- Simple Cell
        var cell : UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "Cell")
        if cell == nil{
          cell = UITableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        }
        cell!.textLabel?.text = "\(indexPath.section) -- \(indexPath.row)"
        cell?.accessoryType = .checkmark
        
        cell?.imageView?.image = UIImage.init(named: "aamir")
        
        
        
        
        //let cell: actorCell=tableView.dequeueReusableCell(withIdentifier: "ActorCell", for:indexPath) as! actorCell
        //cell.actorImage.image=UIImage(cgImage: self.actors[indexPath.row] as! CGImage)
        //return cell
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("didSelectRowAt ==>> \(indexPath)")
        
    }

}

