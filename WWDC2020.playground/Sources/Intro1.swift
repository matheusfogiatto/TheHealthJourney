import AVFoundation
import SpriteKit

public class Intro1: SKScene {
    
    private var brainHappy: SKSpriteNode?
    
    override public func didMove(to view: SKView) {
        
        let label = self.childNode(withName: "textLabel") as? SKLabelNode
        label!.text =
        """
        My name is Twelves and I will be your guide in this journey!
        Hope you enjoy and learn something with me!
        """
        label!.lineBreakMode = NSLineBreakMode.byWordWrapping
        label!.numberOfLines = 0
        label!.preferredMaxLayoutWidth = 580
        
        buildBrainHappy()
       
    }
    
    func buildBrainHappy(){
        let texture = SKTexture(imageNamed: "Intro/happyBrain")
        brainHappy = SKSpriteNode(texture: texture)
        brainHappy?.size = CGSize(width: 345, height: 293)
        brainHappy?.position = CGPoint(x: -307.5, y: -173.5)
        brainHappy?.zPosition = 0
        brainHappy?.name = "HAPPYBRAIN"
        addChild(brainHappy!)
    }
    
    
    override public func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if let _ = touches.first {
            let scene = Intro2(fileNamed: "Intro/Intro2")!
            scene.scaleMode = .aspectFit
            let transition = SKTransition.push(with: .up, duration: 1)
            self.view?.presentScene(scene, transition: transition)
        }
    }
}

