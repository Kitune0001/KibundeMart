//
//  ShowViewController.swift
//  KibundeMart
//
//  Created by 秋武大介 on 2024/01/26.
//

import UIKit

class ShowViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
        var selectedImg: UIImage!
     
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = selectedImg
                // 画像のアスペクト比を維持しUIImageViewサイズに収まるように表示
                imageView.contentMode = UIView.ContentMode.scaleAspectFit
         
    }

        // Do any additional setup after loading the view.
}
    
  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


