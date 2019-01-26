//
//  ViewController.swift
//  Camera
//
//  Created by TIEGO Ouedraogo on 1/25/19.
//  Copyright © 2019 TIEGO Ouedraogo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    
    
    @IBOutlet weak var gallary: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    @IBAction func importImages(_ sender: UIButton) {
        
        let images = UIImagePickerController()
        images.delegate = self
        images.sourceType = UIImagePickerController.SourceType.photoLibrary
        images.allowsEditing = true;
        self.present(images, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let images = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            gallary.image = images
        }else{
            resignFirstResponder()
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

