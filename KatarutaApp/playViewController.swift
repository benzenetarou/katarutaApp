//
//  playViewController.swift
//  KatarutaApp
//
//  Created by benzentarou on 2017/05/07.
//  Copyright © 2017年 benzentarou. All rights reserved.
//

import UIKit

class playViewController: UIViewController {

    @IBOutlet weak var card: UILabel!
    @IBOutlet weak var cardButton: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    
    var numberOfCard: Int = 2
    var cardCounter: Int = 0
    var wordList = ["but", "therefore", "unfortunately", "although", "by the way", "in my opinion", "fortunately", "in other words", "fruncly", "to be honest"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        card.layer.masksToBounds = true
        card.layer.cornerRadius = 10
        
        let singleTap = UITapGestureRecognizer(target: self, action: #selector(playViewController.tapLabel(sender:)))
    
        view.addGestureRecognizer(singleTap)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tapLabel(sender: UITapGestureRecognizer){
        if (cardCounter < numberOfCard){
            let random = Int(arc4random_uniform(UInt32(wordList.count)))
            card.text = wordList[random]
            cardCounter += 1

        }else{
            card.text = "Complete!"
            card.backgroundColor = UIColor.orange
        }
        countLabel.text = "\(cardCounter)枚"
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
