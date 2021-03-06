//
//  HomeViewController.swift
//  DeliveryMinhyuk
//
//  Created by 김유진 on 2021/02/17.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    @IBOutlet weak var menuCollectionView: UICollectionView!
    @IBOutlet weak var imageCollectionView: UICollectionView!
    
    let TitleLabel: [String] = ["배달","포장/방문"]
    
    var timer = Timer()

    var counter = 0

    let image = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"), UIImage(named: "4")]
    
    @IBOutlet weak var bar: UIView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if(collectionView == menuCollectionView){
            return TitleLabel.count
        }else if(collectionView == imageCollectionView){
            return image.count
        }else{
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if(collectionView == menuCollectionView){
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCell", for: indexPath) as! HomeCollectionViewCell
            if indexPath.item == 0 {
                cell.isSelected = true
            }
            cell.label.text = TitleLabel[indexPath.row]
            return cell
            
        }else if(collectionView == imageCollectionView){
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCell", for: indexPath) as! ImageCollectionViewCell
            cell.collectionViewImage.image = image[indexPath.row]
            return cell
        }else{
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width / 2
        
        return CGSize(width: width, height: width / 3)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if(indexPath.row == 0){
            print("12")
            UIView.animate(withDuration: 0.3){
                self.bar.center = CGPoint(x:104, y:140)
            }
        }else{
            print("2")
            UIView.animate(withDuration: 0.3){
                self.bar.center = CGPoint(x:312, y:140)
            }
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
