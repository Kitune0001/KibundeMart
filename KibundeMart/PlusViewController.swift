//
//  PlusViewController.swift
//  KibundeMart
//
//  Created by 秋武大介 on 2024/02/02.
//

import UIKit

class PlusViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    var array = [String]()
    
    var saveData: UserDefaults = UserDefaults.standard
    
    var itemList = [[String: Any]]()
    
    @IBOutlet var itemTextfild: UITextField!
    
    @IBOutlet var itemImageView: UIImageView!
    
    @IBOutlet weak var happyButton: UIButton!
    
    @IBOutlet weak var relaxButton: UIButton!
    
    @IBOutlet weak var harryButton: UIButton!
    
    @IBOutlet weak var creativeButton: UIButton!
    
    var feeling: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
   
    @IBAction func tapHappy(){
        //押されたら一時的に変数に値を格納する！
        feeling = "Happy"
        happyButton.layer.borderWidth = 2.0
        happyButton.layer.borderColor = UIColor.black.cgColor
        relaxButton.layer.borderWidth = 0.0
        harryButton.layer.borderWidth = 0.0
        creativeButton.layer.borderWidth = 0.0
    }
    
    @IBAction func tapRelax(){
        //押されたら一時的に変数に値を格納する！
        feeling = "Relax"
        relaxButton.layer.borderWidth = 2.0
        relaxButton.layer.borderColor = UIColor.black.cgColor
        happyButton.layer.borderWidth = 0.0
        harryButton.layer.borderWidth = 0.0
        creativeButton.layer.borderWidth = 0.0
    }
    
    @IBAction func tapHarry(){
        //押されたら一時的に変数に値を格納する！
        feeling = "Harry"
        harryButton.layer.borderWidth = 2.0
        harryButton.layer.borderColor = UIColor.black.cgColor
        happyButton.layer.borderWidth = 0.0
        relaxButton.layer.borderWidth = 0.0
        creativeButton.layer.borderWidth = 0.0
    }
    
    @IBAction func tapCreative(){
        //押されたら一時的に変数に値を格納する！
        feeling = "Creative"
        creativeButton.layer.borderWidth = 2.0
        creativeButton.layer.borderColor = UIColor.black.cgColor
        happyButton.layer.borderWidth = 0.0
        relaxButton.layer.borderWidth = 0.0
        harryButton.layer.borderWidth = 0.0
    }
    
    @IBAction func openAlbum() {
       //カメラロールが使えるか確認
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
            let picker = UIImagePickerController()
            picker.sourceType = .photoLibrary
            picker.delegate = self
            picker.allowsEditing = true
            present(picker, animated: true, completion: nil)
        }
    }
    
    @IBAction func addTask() {
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
}
