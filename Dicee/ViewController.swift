//
//  ViewController.swift
//  Dicee
//
//  Created by Sudhanva Shashidhara on 27/05/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dice_one_ref: UIImageView!
    @IBOutlet weak var dice_two_ref: UIImageView!
    
    let dices_image_ref_array = [
        UIImage(imageLiteralResourceName: "DiceOne"),
        UIImage(imageLiteralResourceName: "DiceTwo"),
        UIImage(imageLiteralResourceName: "DiceThree"),
        UIImage(imageLiteralResourceName: "DiceFour"),
        UIImage(imageLiteralResourceName: "DiceFive"),
        UIImage(imageLiteralResourceName: "DiceSix")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let left_dice_number = Int.random(in: 0...5)
        let right_dice_number = Int.random(in: 0...5)
        print("Left Dice Number: \(left_dice_number)")
        print("Right Dice Number: \(right_dice_number)")
        dice_one_ref.image = dices_image_ref_array[left_dice_number]
        dice_two_ref.image = dices_image_ref_array[right_dice_number]

    }
    
}

