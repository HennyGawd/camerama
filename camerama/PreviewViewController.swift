//
//  PreviewViewController.swift
//  camerama
//
//  Created by argenis delarosa on 11/13/18.
//  Copyright © 2018 argenis delarosa. All rights reserved.
//

import UIKit

class PreviewViewController: UIViewController {
    
    
    @IBOutlet weak var photo: UICollectionView!
    
    var image = UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        photo.image = self.image

        // Do any additional setup after loading the view.
    }
    
    @IBAction func cancelButton_TouchUpInside(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveButton_TouchUpInside(_ sender: Any) {
        
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        
        dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
