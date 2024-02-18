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
    
    var itemList = [[String: Any]]()
    
    var outputValue : String?
    
    @IBOutlet var collectionView: UICollectionView!
    
    let spacer: CGFloat = 16
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
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
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
                itemList = saveData.object(forKey: "item_data") as! [[String : Any]]
                let filteredItems = itemList.filter { item in
                    guard let feeling = item["feeling"] as? String else { return false }
                    return feeling == outputValue!
                }
                
                itemList = filteredItems
                collectionView.reloadData()
            
    }
    //コレクションビューで配列の分セルを表示する！
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return itemList.count
    }
    //コレクションビューのセルの中に何を表示するか！
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: UICollectionViewCell =
        collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        let imageView = cell.contentView.viewWithTag(1) as! UIImageView
        imageView.image = UIImage(data: itemList[indexPath.row]["itemImage"] as! Data)

        let titleLabel = cell.contentView.viewWithTag(2) as! UILabel
        titleLabel.text = itemList[indexPath.row]["itemName"] as? String
        
        return cell
    }
    //セルをタップした際に何をするか！
    func collectionView(_ collectionView: UICollectionView,
                        didSelectItemAt indexPath: IndexPath) {
    // Identifierを指定して画面遷移する
    performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            // 遷移先のビューコントローラーを取得
            if let destinationVC = segue.destination as? ShowViewController {
                // ここで遷移先のビューコントローラーにデータを渡すなどの設定を行う
                // destinationVC.someProperty = someValue など
            }
        }
    }
    
}
