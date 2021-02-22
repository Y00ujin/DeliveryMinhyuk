//
//  OrderListViewController.swift
//  DeliveryMinhyuk
//
//  Created by 김유진 on 2021/02/21.
//

import UIKit

class OrderListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var shopName = ["노랑통닭 광주학동점", "푸라닭치킨 봉선점","BHC 광주백운점","노랑통닭","푸라닭치킨","광주백운점","광주학동점","봉선점"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shopName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "orderListTableViewCell", for: indexPath) as! OrderListTableViewCell
        
        cell.orderDate.text = "0000/00/00 (월)"
        cell.chickenImage.image = UIImage(named: "chicken-leg")
        cell.orderMemuName.text = "알싸한 마늘 치킨"
        cell.orderMenuPrice.text = "20,000원"
        cell.orderShopName.text = shopName[indexPath.row]
        cell.orderMenuCount.text = "1개"
        
        return cell
        
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}
