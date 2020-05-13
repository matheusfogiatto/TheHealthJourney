import AVFoundation
import SpriteKit

public class BreathingDescription: SKScene {
    
    private var exerciseBrain: SKSpriteNode?
    private var continueButton: SKSpriteNode?
    private var background: SKSpriteNode?
    
    override public func didMove(to view: SKView) {
        
        buildBrainHappy()
        buildBackground()
        buildTapContinue()
        
        let label = self.childNode(withName: "textLabel") as? SKLabelNode
        label!.text =
        """
        Your breath is a powerful tool to ease stress and make you feel less anxious. Controlled breathing exercises can help keep your mind and body in shape, by helping to lower blood pressure, promote feelings of calm and relaxation. Some simple breathing exercises can make a big difference if you make them part of your regular routine.
        """
        label!.lineBreakMode = NSLineBreakMode.byWordWrapping
        label!.numberOfLines = 0
        label!.preferredMaxLayoutWidth = 450
        
        
       
    }
    
    func buildBrainHappy(){
        let texture = SKTexture(imageNamed: "BreathingGame/brainRunning")
        exerciseBrain = SKSpriteNode(texture: texture)
        exerciseBrain?.size = CGSize(width: 516, height: 487)
        exerciseBrain?.position = CGPoint(x: -258.708, y: -30.75)
        exerciseBrain?.zPosition = 0
        exerciseBrain?.name = "HAPPYBRAIN"
        addChild(exerciseBrain!)
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
            let scene = ToDoListGame(fileNamed: "ToDoListGame/ToDoListGame")!
            scene.scaleMode = .aspectFit
            let transition = SKTransition.push(with: .left, duration: 1)
            self.view?.presentScene(scene, transition: transition)
        }
    }
}

