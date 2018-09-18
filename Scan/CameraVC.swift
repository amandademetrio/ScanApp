//
//  CameraVC.swift
//  Scan
//
//  Created by Neil Sood on 9/18/18.
//  Copyright © 2018 Neil Sood. All rights reserved.
//

import UIKit

class CameraVC: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    override func viewDidAppear(_ animated: Bool) {
        launchCamera()
    }

}

extension CameraVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func launchCamera() {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .camera;
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
}
