import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var questionNum = 0
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        
        storyBrain.nextStory(userAnswer)
        print(userAnswer)
//        storyBrain.nextQuestion()
        
        updateUI()
    }
    
    
    func updateUI(){
        storyLabel.text = storyBrain.getText()
        choice1Button.setTitle(storyBrain.getFirstAnswer(), for: .normal)
        choice2Button.setTitle(storyBrain.getSecondAnswer(), for: .normal)
    }
}

