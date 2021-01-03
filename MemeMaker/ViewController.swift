//
//  ViewController.swift
//  MemeMaker
//
//  Created by 홍화형 on 2021/01/02.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var topCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet var bottomCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet var topCaptionLabel: UILabel!
    @IBOutlet var bottomCaptionLabel: UILabel!
    @IBOutlet var ImageView: UIImageView!
    
    let pic = Array<[String]>([["shortSleeve","shorts","slipper"],
                               ["rainCoat","rainPants","rainBoots"],
                               ["windBreak","jeans","runningShoes"],
                               ["padding","goldenPants","uggBoots"]]);
    let topEmoji = Array<String>(["☀️","🌧","💨","❄️"]);
    let bottomWord = Array<String>(["상의","하의","신발"]);
    var top = 0;
    var bottom = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topCaptionSegmentedControl.removeAllSegments()
        for choice in 0..<4 {
            topCaptionSegmentedControl.insertSegment(withTitle: topEmoji[choice], at: choice, animated: false)
        }
        topCaptionSegmentedControl.selectedSegmentIndex=0;
        bottomCaptionSegmentedControl.removeAllSegments()
        for choice in 0..<3 {
            bottomCaptionSegmentedControl.insertSegment(withTitle: bottomWord[choice], at: choice, animated: false)
        }
        bottomCaptionSegmentedControl.selectedSegmentIndex=0;
        topCaptionSegmentedAction((Any).self);
        bottomCaptionSegmentedAction((Any).self);
    }

    @IBAction func topCaptionSegmentedAction(_ sender: Any) {
        top = topCaptionSegmentedControl.selectedSegmentIndex;
        topCaptionLabel.text = topEmoji[top];
        ImageView.image = UIImage(named: pic[top][bottom]);
    }
    @IBAction func bottomCaptionSegmentedAction(_ sender: Any) {
        bottom = bottomCaptionSegmentedControl.selectedSegmentIndex;
        bottomCaptionLabel.text = bottomWord[bottom];
        ImageView.image = UIImage(named: pic[top][bottom]);
    }
    
}

