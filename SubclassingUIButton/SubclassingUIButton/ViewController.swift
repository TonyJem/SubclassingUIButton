import UIKit

class ViewController: UIViewController {
    
    // Outlet to the score label in Interface Builder.
    @IBOutlet weak var scoreLabel: UILabel!

    // Outlet to the object name label in Interface Builder.
    @IBOutlet weak var objectFoundLabel: UILabel!

    // Variables to record the current score. How many buttons have been tapped
    // and the maximum number of buttons available.
    var score: Int = 0
    var numberOfButtons: Int = 15
    var buttonCounter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Update the display
        self.updateDisplayWithObjectText(lastObjectFound: nil)
    }
    
    
    @IBAction func buttonTapped(sender: MysteryButton) {
        if !sender.beenTapped {
            buttonCounter += 1
            sender.showImage()
            score+=sender.value
            self.updateDisplayWithObjectText(lastObjectFound: sender.suprise!.basicDescription())
        }

        if buttonCounter == numberOfButtons {
            self.resetSuprises()
        }
    }
    
    func updateDisplayWithObjectText(lastObjectFound: String?) {
        self.scoreLabel.text = "Score: \(score)"
        if let objectName = lastObjectFound {
            self.objectFoundLabel.text = objectName
        } else {
            self.objectFoundLabel.text = ""
        }
    }
    
    func resetSuprises() {
        var arrayOfButtons = [MysteryButton]()
        for subview in self.view.subviews  {
            if (subview is MysteryButton) {
                arrayOfButtons.append(subview as! MysteryButton)
            }
        }

        for button in arrayOfButtons {
            button.resetMe()
        }

        score = 0
        buttonCounter = 0
        self.updateDisplayWithObjectText(lastObjectFound: nil)
    }
}

