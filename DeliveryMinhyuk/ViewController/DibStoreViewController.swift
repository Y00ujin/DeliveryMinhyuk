//
//  DibStoreViewController.swift
//  DeliveryMinhyuk
//
//  Created by 김유진 on 2021/02/21.
//

import UIKit

class DibStoreViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dibTableViewCell", for: indexPath) as! DibStoreTableViewCell
        
        cell.dibStoreName.text = "금호회수산"
        cell.dibStoreImage.image = UIImage(named: "icon9")
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
