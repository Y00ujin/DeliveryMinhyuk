//
//  HomeViewController.swift
//  DeliveryMinhyuk
//
//  Created by 김유진 on 2021/02/17.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    let TitleLabel: [String] = ["배달","포장/방문"]
    
    var timer = Timer() // 타이머로 자동 슬라이드 셋팅

        var counter = 0  // 그림이 어디로 슬라이드할지 init

        let imgArr = [UIImage(named: "1"),UIImage(named: "2")] // 이미지 소스로딩.
    
    @IBOutlet weak var bar: UIView!
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return TitleLabel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCell", for: indexPath) as! HomeCollectionViewCell
        
        if indexPath.item == 0 {
          cell.isSelected = true
        }
        
        cell.label.text = TitleLabel[indexPath.row]
        
        return cell
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
        guard var cell = collectionView.cellForItem(at: indexPath) as? HomeCollectionViewCell else{
                    fatalError()
        }


        if(indexPath.row == 0){
            print("1")
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
