//
//  ViewController.swift
//  Page Control
//
//  Created by silver j on 2022/12/11.
//

import UIKit

var images = [ "01.jpg", "02.jpeg", "03.jpeg", "04.jpeg", "05.jpg"]
class ViewController: UIViewController {
    @IBOutlet var imgView: UIImageView!
    
    @IBOutlet var pageControl: UIPageControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        pageControl.numberOfPages = images.count
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.green
        pageControl.currentPageIndicatorTintColor = UIColor.red
        imgView.image = UIImage(named: images[0])
    }


    @IBAction func pageChange(_ sender: UIPageControl) {
        imgView.image = UIImage(named: images[pageControl.currentPage])
    }
}

