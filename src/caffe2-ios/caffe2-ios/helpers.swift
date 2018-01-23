//
//  helpers.swift
//  caffe2-ios
//
//  Created by Kaiwen Yuan on 2017-05-04.
//  Copyright © 2017 Kaiwen Yuan. All rights reserved.
//

func resizeImage(image: UIImage, newWidth: CGFloat, newHeight: CGFloat) -> UIImage? {
    UIGraphicsBeginImageContext(CGSize(width: newWidth, height: newHeight))
    image.draw(in: CGRect(x: 0, y: 0, width: newWidth, height: newHeight))
    
    let newImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    
    return newImage
}
