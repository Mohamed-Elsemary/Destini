import UIKit
class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    var questionNumber = 0
  var  commingStory = StoryBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    @IBAction func choiceMade(_ sender: UIButton) {
        commingStory.nextStory(userAnswer:sender.currentTitle!)
        updateUI()
    }
    
    func updateUI(){
        storyLabel.text = commingStory.getNextQuestion()
        choice1Button.setTitle(commingStory.getChoice1(), for: .normal)
        choice2Button.setTitle(commingStory.getChoice2(), for: .normal)
    }
    
}


