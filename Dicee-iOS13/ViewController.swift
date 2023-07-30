import UIKit

class ViewController: UIViewController {
    // 주사위 이미지
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    // 주사위 합계 표시할 라벨
    @IBOutlet weak var totalValueLable: UILabel!
    
    var totalNumber = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewController Starts");

        self.totalValueLable.text = String(self.totalNumber)
        
//        diceImageViewOne.image = UIImage(named: "DiceSix")
    }

    @IBAction func rollButtonAction(_ sender: UIButton) {
        
        // 주사위 난수 발생
        var diceOneNumber = Int.random(in: 0..<6);
        var diceTwoNumber = Int.random(in: 0..<6);
        
        // 주사위 이미지 설정
        self.diceImageViewOne.image =
        [UIImage(imageLiteralResourceName: "DiceOne"),
         UIImage(imageLiteralResourceName: "DiceTwo"),
         UIImage(imageLiteralResourceName: "DiceThree"),
         UIImage(imageLiteralResourceName: "DiceFour"),
         UIImage(imageLiteralResourceName: "DiceFive"),
         UIImage(imageLiteralResourceName: "DiceSix")][diceOneNumber]
        
        self.diceImageViewTwo.image =
        [UIImage(imageLiteralResourceName: "DiceOne"),
         UIImage(imageLiteralResourceName: "DiceTwo"),
         UIImage(imageLiteralResourceName: "DiceThree"),
         UIImage(imageLiteralResourceName: "DiceFour"),
         UIImage(imageLiteralResourceName: "DiceFive"),
         UIImage(imageLiteralResourceName: "DiceSix")][diceTwoNumber]
        
        self.totalNumber = (diceOneNumber + 1) + (diceTwoNumber + 2)
        self.totalValueLable.text = String(self.totalNumber)
    }
    
    
    
}

