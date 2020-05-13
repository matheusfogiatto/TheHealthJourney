import AVFoundation
import SpriteKit

public class Intro1: SKScene {
    
    private var brainHappy: SKSpriteNode?
    private var continueButton: SKSpriteNode?
    private var background: SKSpriteNode?
    
    override public func didMove(to view: SKView) {
        
        let label = self.childNode(withName: "textLabel") as? SKLabelNode
        label!.text =
        """
        My name is Twelves and I will be your guide in this journey!
        Hope you enjoy and learn something with me!
        """
        label!.lineBreakMode = NSLineBreakMode.byWordWrapping
        label!.numberOfLines = 0
        label!.preferredMaxLayoutWidth = 450
        
        buildBrainHappy()
        buildTapContinue()
        buildBackground()
    }
    
    func buildBrainHappy(){
        let texture = SKTexture(imageNamed: "Intro/brainHappy")
        brainHappy = SKSpriteNode(texture: texture)
        brainHappy?.size = CGSize(width: 516, height: 487)
        brainHappy?.position = CGPoint(x: -258.708, y: -30.75)
        brainHappy?.zPosition = 0
        brainHappy?.name = "HAPPYBRAIN"
        addChild(brainHappy!)
    }
    
    func buildBackground(){
        let texture = SKTexture(imageNamed: "Intro/imagemBackground")
        background = SKSpriteNode(texture: texture)
        background?.size = CGSize(width: 1200, height: 900)
        background?.position = CGPoint(x: 0, y: 0)
        background?.zPosition = -10
        background?.name = "BACKGROUND"
        addChild(background!)
    }
    
    func buildTapContinue(){
        let texture = SKTexture(imageNamed: "Intro/continueButton")
        continueButton = SKSpriteNode(texture: texture)
        continueButton?.size = CGSize(width: 336, height: 90)
        continueButton?.position = CGPoint(x: 333, y: -320)
        continueButton?.zPosition = 0
        continueButton?.name = "CONTINUEBUTTON"
        addChild(continueButton!)
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

