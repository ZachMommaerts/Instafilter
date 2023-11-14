//
//  ImageSaver.swift
//  Instafilter
//
//  Created by Zach Mommaerts on 11/14/23.
//

import UIKit

class ImageSaver: NSObject {
    func writeToPhotoAlbum(image: UIImage) {
        UIImageWriteToSavedPhotosAlbum(image, self, #selector(saveCompleted), nil)
    }
    
    @objc func saveCompleted(_ image: UIImage, didFinishSavingWithError: Error?, contextInfo: UnsafeRawPointer) {
        print("Save finished!")
    }
}
