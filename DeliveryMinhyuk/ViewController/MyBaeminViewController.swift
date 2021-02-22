//
//  MyBaeminViewController.swift
//  DeliveryMinhyuk
//
//  Created by 김유진 on 2021/02/21.
//

import UIKit

class MyBaeminViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleLabel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as! MyBaeminTableViewCell
        
        cell.titleLabel.text = titleLabel[indexPath.row]
        cell.subTitleLabel.text = subTitleLabel[indexPath.row]
        
        return cell
        
    }
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var titleLabel = ["배민페이 등록","가족계정 관리"]
    
    var subTitleLabel = ["배민페이로 결제하면 최대 5.5% 배민포인트가 적립됩니다!","결제수단을 공유해 우리 가족의 끼니를 챙겨주세요"]
    
    var imageArr = [UIImage(named: "icon1"),UIImage(named: "icon2"),UIImage(named: "icon3"), UIImage(named: "icon4"), UIImage(named: "icon5"), UIImage(named: "icon6")]
    
    var nameLabelArr = ["포인트","쿠폰함","선물함","찜한가게","주문내역","리뷰관리"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyBaeminCollectionViewCell
        
        cell.image.image = imageArr[indexPath.row]
        cell.nameLabel.text = nameLabelArr[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width / 3
        
        return CGSize(width: width, height: width / 2)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if(indexPath.row == 0){
            print("1")
        }else{
        }
    }
    
    @IBOutlet weak var gradeGift: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gradeGift.layer.cornerRadius = 13
        tableView.delegate = self
        tableView.dataSource = self
    }

    
    @IBAction func gradeGift(_ sender: Any) {
        // 화면전환
    }
}
