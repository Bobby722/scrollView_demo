//
//  ViewController.swift
//  demo
//
//  Created by 林嫈沛 on 2022/3/7.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var pageCtrl: UIPageControl!
    @IBOutlet weak var userImg: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        userImg.layer.borderWidth = 1
        userImg.layer.borderColor = CGColor(red: 1, green: 0, blue: 0, alpha: 1)
        pageCtrl.numberOfPages = 9
        pageCtrl.currentPage = 0
        scrollView.delegate = self
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let currentPage = Int(scrollView.contentOffset.x /        scrollView.frame.size.width)
        pageCtrl.currentPage = currentPage
    }

}

