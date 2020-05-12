import AVFoundation
import SpriteKit

public class Intro3: SKScene {
    
    private var exerciseBrain: SKSpriteNode?
    
    override public func didMove(to view: SKView) {
        
        buildBrainHappy()
        
        let label = self.childNode(withName: "textLabel") as? SKLabelNode
        label!.text =
        """
        Next, I prepared some exercises that can contribute to a better mental health. Let’s try?
        """
        label!.lineBreakMode = NSLineBreakMode.byWordWrapping
        label!.numberOfLines = 0
        label!.preferredMaxLayoutWidth = 580
       
    }
    
    func buildBrainHappy(){
        let texture = SKTexture(imageNamed: "Intro/exerciseBrain")
        exerciseBrain = SKSpriteNode(texture: texture)
        exerciseBrain?.size = CGSize(width: 258, height: 307)
        exerciseBrain?.position = CGPoint(x: -351, y: -217.85)
        exerciseBrain?.zPosition = 0
        exerciseBrain?.name = "HAPPYBRAIN"
        addChild(exerciseBrain!)
    }
    
    
    override public func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if let _ = touches.first {
            let scene = BreathingGame(fileNamed: "BreathingGame/BreathingGame")!
            scene.scaleMode = .aspectFit
            //            let transition = SKTransition.fade(with: UIColor(red: 0.3725, green: 1, blue: 0.8275, alpha: 1.0),duration: 1)
            //            let transition2 = SKTransition.push(with: .down, duration: 1)
            let transition = SKTransition.flipHorizontal(withDuration: 1)
            self.view?.presentScene(scene, transition: transition)
        }
    }
}

