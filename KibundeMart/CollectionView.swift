//
//  CollectionView.swift
//  KibundeMart
//
//  Created by 秋武大介 on 2024/01/18.
//

import UIKit

class CollectionView: UIViewController,UICollectionViewDelegate,
                      UICollectionViewDataSource {
    
    var saveData: UserDefaults = UserDefaults.standard
    
    var array = [String]()
    
    
    
    
    @IBOutlet var collectionView: UICollectionView!
    
    let imageArray = ["img","img","img",",img,",",img,","img"]
    
    let titleArray = ["title1","title1","title1","title1","title1","title1"]
    
    let spacer: CGFloat = 16
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        array = []

    
        saveData.set(array, forKey: "array_data")
        
        
        let layout = UICollectionViewFlowLayout()
        // 縦スクロールに設定

        layout.scrollDirection = .vertical
        // セルの大きさ設定

        layout.itemSize = CGSize(width: view.frame.width / 2 - spacer * 2, height:
        view.frame.width / 2 - spacer * 2)
        // 余白の設定

        layout.sectionInset = UIEdgeInsets(top: spacer, left: spacer, bottom: spacer, right: spacer)
        // レイアウトをcollectionViewに適応させる

        collectionView.collectionViewLayout = layout
        
        
        // Do any additional setup after loading the view.
    }
    
    
    
    //コレクションビューで配列の分セルを表示する！
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return imageArray.count
    }
    //コレクションビューのセルの中に何を表示するか！
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        
        
        let cell: UICollectionViewCell =
        collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        let imageView = cell.contentView.viewWithTag(1) as! UIImageView
        imageView.image = UIImage(named: imageArray[indexPath.row])

  
        let titleLabel = cell.contentView.viewWithTag(2) as! UILabel
        titleLabel.text = titleArray[indexPath.row]
        
      

        return cell
        
        
        
    }
    //セルをタップした際に何をするか！
    func collectionView(_ collectionView: UICollectionView,
                        didSelectItemAt indexPath: IndexPath) {
    // Identifierを指定して画面遷移する
    performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
}
