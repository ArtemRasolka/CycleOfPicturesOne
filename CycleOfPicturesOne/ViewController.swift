//
//  ViewController.swift
//  CycleOfPicturesOne
//
//  Created by Admin on 13.09.22.
//

import UIKit

class ViewController: UIViewController {
    
    var scrollView = UIScrollView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let image1 = UIImage(named: "1") else { return }
        guard let image2 = UIImage(named: "2") else { return }
        guard let image3 = UIImage(named: "3") else { return }
        guard let image4 = UIImage(named: "4") else { return }
        guard let image5 = UIImage(named: "5") else { return }
        
        let scrollViewRect = view.bounds
        scrollView = UIScrollView(frame: scrollViewRect)
        scrollView.isPagingEnabled = true
        scrollView.contentSize = CGSize(width: scrollViewRect.size.width * 5, height: scrollViewRect.size.height)
        view.addSubview(scrollView)
        
        var imageViewRect = view.bounds
        let image1View = newImageViewWithImage(paramImage: image1, paramFrame: imageViewRect)
        scrollView.addSubview(image1View)
        
        imageViewRect.origin.x += imageViewRect.size.width
        let image2View = newImageViewWithImage(paramImage: image2, paramFrame: imageViewRect)
        scrollView.addSubview(image2View)
        
        imageViewRect.origin.x += imageViewRect.size.width
        let image3View = newImageViewWithImage(paramImage: image3, paramFrame: imageViewRect)
        scrollView.addSubview(image3View)
        
        imageViewRect.origin.x += imageViewRect.size.width
        let image4View = newImageViewWithImage(paramImage: image4, paramFrame: imageViewRect)
        scrollView.addSubview(image4View)
        
        imageViewRect.origin.x += imageViewRect.size.width
        let image5View = newImageViewWithImage(paramImage: image5, paramFrame: imageViewRect)
        scrollView.addSubview(image5View)
        
    }
    
    func newImageViewWithImage(paramImage: UIImage, paramFrame: CGRect)-> UIImageView {
        let result = UIImageView(frame: paramFrame)
        result.contentMode = .scaleAspectFit
        result.image = paramImage
        return result
    }
}



