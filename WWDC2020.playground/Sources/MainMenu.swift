import AVFoundation
import SpriteKit
import PlaygroundSupport
import UIKit

public class MainMenu: SKScene {
    
    private var brainRelax: SKSpriteNode?
    
    override public func didMove(to view: SKView) {
        
        buildBrainRelax()
        
        brainRelax!.run(SKAction.repeatForever(
            SKAction.sequence([
                SKAction.moveBy(x: 0, y: -50, duration: 2),
                SKAction.moveBy(x: 0, y: 50, duration: 2)
                ]
        )))
        
    }
    
    func buildBrainRelax(){
        let texture = SKTexture(imageNamed: "Intro/BrainRelax")
        brainRelax = SKSpriteNode(texture: texture)
        brainRelax?.size = CGSize(width: 358, height: 309)
        brainRelax?.position = CGPoint(x: 0.5, y: -46.005)
        brainRelax?.zPosition = 0
        brainRelax?.name = "BRAINRELAX"
        addChild(brainRelax!)
    }
    
    override public func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if let _ = touches.first {
            let scene = Intro1(fileNamed: "Intro/Intro1")!
            scene.scaleMode = .aspectFit
            //            let transition = SKTransition.fade(with: UIColor(red: 0.3725, green: 1, blue: 0.8275, alpha: 1.0),duration: 1)
            //            let transition2 = SKTransition.push(with: .down, duration: 1)
            let transition = SKTransition.flipHorizontal(withDuration: 1)
            self.view?.presentScene(scene, transition: transition)
        }
    }
    
}
