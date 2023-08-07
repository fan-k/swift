//
//  ViewController.swift
//  SwiftStart
//
//  Created by 樊康鹏 on 2023/7/12.
//

import UIKit

class ViewController: UITableViewController {

    var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items{
            if item.hasSuffix("mp4"){
                pictures.append(item)
            }
        }
        
        
        // Do any additional setup after loading the view.
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "picture", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
     
//        if let detailvc = storyboard?.instantiateViewController(withIdentifier: "DetailImageController")  as? DetailImageController{
//            detailvc.imageName = pictures[indexPath.row]
//            navigationController?.pushViewController(detailvc, animated: false)
//        }
        
        let detailcontroller = DetailImageController.init()
        detailcontroller.imageName = pictures[indexPath.row]
//        self.navigationController?.popToViewController(detailcontroller, animated: true)
        navigationController?.pushViewController(detailcontroller, animated: false)
        
        
    }
    
    
}

