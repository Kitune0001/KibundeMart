//
//  ViewController.swift
//  KibundeMart
//
//  Created by 秋武大介 on 2023/12/15.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

/* @IBAction func addTask() {
    guard let itemName = itemTextfild.text, !itemName.isEmpty,
                  let itemImage = itemImageView.image,
                  let itemFeeling = feeling else {
                // 必要な情報が揃っていない場合はエラーメッセージを表示
                let alert = UIAlertController(title: "エラー！", message: "空の項目があるよ！", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                alert.addAction(okAction)
                present(alert, animated: true, completion: nil)
                return
            }
    // アルバム or カメラから画像を取得できなかった場合
    if (itemImageView == nil){
        // 画像を取得できなかった場合は、デフォルトの画像を指定する
        itemImageView.image = UIImage(named: "grayimage")
    }
    
    // 保存するタスクデータ
    let item: [String: Any] = [
        "itemName": itemTextfild.text as Any,
        "itemImage": itemImageView.image?.pngData() as NSData? as Any,
        "felling": feeling as Any
    ]
  
    // タスクリストに保存するタスクデータを追加する
    itemList.append(item)
    print(itemList)
    // 最新のtaskListに更新する
    saveData.set(itemList, forKey: "item_data")
    //保存した！アラートをだす！
    let alert = UIAlertController(title: "保存", message: "保存できたよ！", preferredStyle: .alert)
    let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
        // OKボタン押下時に実行した処理
        self.navigationController?.popViewController(animated: true)
    })
            alert.addAction(ok)
            self.present(alert, animated: true, completion: nil)
   }

func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info:
    [UIImagePickerController.InfoKey : Any]) {
    
    itemImageView.image = info[.editedImage] as? UIImage
    //一個前に戻る
    dismiss(animated: true, completion: nil)
    
}
 */
