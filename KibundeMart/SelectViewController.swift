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
    
    @IBOutlet weak var search: UIButton!
    
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
            next?.outputValue = feeling
        }
    }
    
    @IBAction func tapTransitionButton(_ sender: Any) {
        // 画面遷移実行
        performSegue(withIdentifier: "toBViewController", sender: nil)
    }
    
    @IBAction func tapCreative(){
        //押されたら一時的に変数に値を格納する！
        feeling = "Creative"
        // 画面遷移実行
        performSegue(withIdentifier: "toBViewController", sender: nil)
    }
    
    @IBAction func tapHappy(){
        //押されたら一時的に変数に値を格納する！
        feeling = "Happy"
        // 画面遷移実行
        performSegue(withIdentifier: "toBViewController", sender: nil)
    }
    @IBAction func tapRelax(){
        //押されたら一時的に変数に値を格納する！
        feeling = "Relax"
        // 画面遷移実行
        performSegue(withIdentifier: "toBViewController", sender: nil)
    }
    @IBAction func tapHarry(){
        //押されたら一時的に変数に値を格納する！
        feeling = "Harry"
        // 画面遷移実行
        performSegue(withIdentifier: "toBViewController", sender: nil)
    }
    @IBAction func tapSearch(){
        //押されたら一時的に変数に値を格納する！
        feeling = "Search"
        // 画面遷移実行
        performSegue(withIdentifier: "toBViewController", sender: nil)
    }
}
