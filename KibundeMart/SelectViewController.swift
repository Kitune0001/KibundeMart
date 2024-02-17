//
//  SelectViewController.swift
//  KibundeMart
//
//  Created by 秋武大介 on 2024/02/16.
//

import UIKit

class SelectViewController: UIViewController {
    @IBOutlet var itemTextfild: UITextField!
    
    @IBOutlet var itemImageView: UIImageView!
    
    @IBOutlet weak var happyButton: UIButton!
    
    @IBOutlet weak var relaxButton: UIButton!
    
    @IBOutlet weak var harryButton: UIButton!
    
    @IBOutlet weak var creativeButton: UIButton!
    
    @IBOutlet weak var inputField: UITextField!
    
    var feeling: String?
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    // segueが動作することをViewControllerに通知するメソッド
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

            // segueのIDを確認して特定のsegueのときのみ動作させる
            if segue.identifier == "toBViewController" {
                //  遷移先のViewControllerを取得
                let next = segue.destination as? CollectionView
                // 用意した遷移先の変数に値を渡す
                next?.outputValue = self.inputField.text
            }
        }

        @IBAction func tapTransitionButton(_ sender: Any) {
            // 画面遷移実行
            performSegue(withIdentifier: "toBViewController", sender: nil)
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
    @IBAction func tapHappy(){
           //押されたら一時的に変数に値を格納する！
           feeling = "Happy"
           creativeButton.layer.borderWidth = 2.0
           creativeButton.layer.borderColor = UIColor.black.cgColor
           happyButton.layer.borderWidth = 0.0
           relaxButton.layer.borderWidth = 0.0
           harryButton.layer.borderWidth = 0.0
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

}
