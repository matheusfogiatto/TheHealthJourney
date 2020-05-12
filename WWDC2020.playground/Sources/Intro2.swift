import AVFoundation
import SpriteKit

public class Intro2: SKScene {
    
    private var brainHappy: SKSpriteNode?
    
    override public func didMove(to view: SKView) {
        
        buildBrainHappy()
        
        let label = self.childNode(withName: "textLabel") as? SKLabelNode
        label!.text =
        """
        Mental health includes our emotional, psychological, and social well-being. It affects how we think, feel, and act. It also helps determine how we handle stress, relate to others, and make choices. Mental health is important at every stage of life, from childhood and adolescence through adulthood.
        """
        label!.lineBreakMode = NSLineBreakMode.byWordWrapping
        label!.numberOfLines = 0
        label!.preferredMaxLayoutWidth = 580
       
    }
    
    func buildBrainHappy(){
        let texture = SKTexture(imageNamed: "Intro/brainThinkingBig")
        brainHappy = SKSpriteNode(texture: texture)
        brainHappy?.size = CGSize(width: 258, height: 307)
        brainHappy?.position = CGPoint(x: -351, y: -217.85)
        brainHappy?.zPosition = 0
        brainHappy?.name = "HAPPYBRAIN"
        addChild(brainHappy!)
    }
    
    
    override public func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if let _ = touches.first {
            let scene = Intro3(fileNamed: "Intro/Intro3")!
            scene.scaleMode = .aspectFit
            let transition = SKTransition.push(with: .up, duration: 1)
            self.view?.presentScene(scene, transition: transition)
        }
    }
}

