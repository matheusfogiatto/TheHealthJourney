import AVFoundation
import SpriteKit
import UIKit

public class EndDescription: SKScene {
    
    private var brainHappy: SKSpriteNode?
    private var continueButton: SKSpriteNode?
    private var background: SKSpriteNode?
    private var floor: SKSpriteNode?
    
    override public func didMove(to view: SKView) {
        
        let label = self.childNode(withName: "textLabel") as? SKLabelNode
        label!.text =
        """
        “Mental health is not a destination, but a process. It's about how you drive, not where you're going.”
        """
        label!.lineBreakMode = NSLineBreakMode.byWordWrapping
        label!.numberOfLines = 0
        label!.preferredMaxLayoutWidth = 450
        
        buildBrainHappy()
        buildBackground()
        buildFloor()
        
        brainHappy!.run(SKAction.repeatForever(
            SKAction.sequence([
                SKAction.moveBy(x: 0, y: -50, duration: 2),
                SKAction.moveBy(x: 0, y: 50, duration: 2)
                ]
        )))
    }
    
    func buildBrainHappy(){
        let texture = SKTexture(imageNamed: "Congratulations/levitateBrain")
        brainHappy = SKSpriteNode(texture: texture)
        brainHappy?.size = CGSize(width: 516, height: 453)
        brainHappy?.position = CGPoint(x: -258.708, y: -30.75)
        brainHappy?.zPosition = 1
        brainHappy?.name = "HAPPYBRAIN"
        addChild(brainHappy!)
    }
    
    func buildFloor(){
        let texture = SKTexture(imageNamed: "Congratulations/floor")
        floor = SKSpriteNode(texture: texture)
        floor?.size = CGSize(width: 516, height: 34)
        floor?.position = CGPoint(x: -258.708, y: -273.75)
        floor?.zPosition = 0
        floor?.name = "FLOOR"
        addChild(floor!)
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
    
    
    override public func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
}

