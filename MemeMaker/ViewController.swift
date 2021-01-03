//
//  ViewController.swift
//  MemeMaker
//
//  Created by 정지연 on 2021/01/03.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var toptitle: UILabel!
    @IBOutlet weak var topSegment: UISegmentedControl!
    @IBOutlet weak var bottomSegment: UISegmentedControl!
    @IBOutlet weak var imageView: UIImageView!
    
  

    var topSegmentIndex: Int = 0
    var bottomSegmentIndex: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "main.jpeg")
    }
    
    @IBAction func topSegment(_ sender: Any) {
        topSegmentIndex = topSegment.selectedSegmentIndex
        viewImage()
    }
    
    @IBAction func bottomSegment(_ sender: Any) {
        bottomSegmentIndex = bottomSegment.selectedSegmentIndex
        viewImage()
    }
    
    func viewImage(){
        if topSegmentIndex == 0 && bottomSegmentIndex == 0{
            imageView.image = UIImage(named: "koreafood.jpeg")
        }else if topSegmentIndex == 0 && bottomSegmentIndex == 1{
            imageView.image = UIImage(named: "korealandmark.jpeg")
        }else if topSegmentIndex == 1 && bottomSegmentIndex == 0{
            imageView.image = UIImage(named: "usafood.jpeg")
        }else if topSegmentIndex == 1 && bottomSegmentIndex == 1{
            imageView.image = UIImage(named: "usalandmark.jpeg")
        }else if topSegmentIndex == 2 && bottomSegmentIndex == 0{
            imageView.image = UIImage(named: "ukfood.jpeg")
        }else{
            imageView.image = UIImage(named: "uklandmark.jpeg")
        }
    }
    
    
}

