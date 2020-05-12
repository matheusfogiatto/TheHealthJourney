import AVFoundation
import SpriteKit


public class BreathingGame: SKScene {
    
    private var star: SKSpriteNode?
    private var star2: SKSpriteNode?
    private var star3: SKSpriteNode?
    private var star4: SKSpriteNode?
    private var star5: SKSpriteNode?
    private var star6: SKSpriteNode?
    private var star7: SKSpriteNode?
    private var star8: SKSpriteNode?
    private var star9: SKSpriteNode?
    private var star10: SKSpriteNode?
    private var star11: SKSpriteNode?
    
    private let starNormalWidth = 200.0
    private let timeInterval = 3.5
    
    override public func didMove(to view: SKView) {
        
        buildStar()
        buildStar2()
        buildStar3()
        buildStar4()
        buildStar5()
        buildStar6()
        buildStar7()
        buildStar8()
        buildStar9()
        buildStar10()
        buildStar11()
        
        resizeAndRotate(widthQuantity: 0.3, angleQuantity: 0.03, duration: timeInterval, node: star2)
        resizeAndRotate(widthQuantity: 0.5, angleQuantity: 0.07, duration: timeInterval, node: star3)
        resizeAndRotate(widthQuantity: 0.7, angleQuantity: 0.11, duration: timeInterval, node: star4)
        resizeAndRotate(widthQuantity: 0.9, angleQuantity: 0.15, duration: timeInterval, node: star5)
        resizeAndRotate(widthQuantity: 1.1, angleQuantity: 0.19, duration: timeInterval, node: star6)
        resizeAndRotate(widthQuantity: 1.3, angleQuantity: 0.23, duration: timeInterval, node: star7)
        resizeAndRotate(widthQuantity: 1.5, angleQuantity: 0.27, duration: timeInterval, node: star8)
        resizeAndRotate(widthQuantity: 1.7, angleQuantity: 0.31, duration: timeInterval, node: star9)
        resizeAndRotate(widthQuantity: 1.9, angleQuantity: 0.35, duration: timeInterval, node: star10)
        resizeAndRotate(widthQuantity: 2.1, angleQuantity: 0.39, duration: timeInterval, node: star11)
    }
    
    override public func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
    func resizeAndRotate(widthQuantity: Double, angleQuantity: CGFloat, duration: Double, node: SKSpriteNode?){
        let resize = SKAction.resize(byWidth: CGFloat(starNormalWidth*widthQuantity), height: CGFloat(starNormalWidth*widthQuantity), duration: duration)
        let angle = SKAction.rotate(byAngle: -(.pi*angleQuantity), duration: duration)
        let firstAnimation = SKAction.group([resize,angle])
        
        let resize2 = SKAction.resize(byWidth: -(CGFloat(starNormalWidth*widthQuantity)), height: -(CGFloat(starNormalWidth*widthQuantity)), duration: duration)
        let angle2 = SKAction.rotate(byAngle: (.pi*angleQuantity), duration: duration)
        let secondAnimation = SKAction.group([resize2,angle2])
        
        let wait = SKAction.wait(forDuration: 1)
        
        let arrayAnimations = [firstAnimation,secondAnimation, wait]
        
        node?.run(SKAction.repeatForever(SKAction.sequence(arrayAnimations)))
    }
    
    func buildStar(){
        star = SKSpriteNode()
        star = SKSpriteNode(imageNamed: "BreathingGame/star")
        star?.size = CGSize(width: 300, height: 300)
        star?.position = CGPoint(x: 0, y: 0)
        star?.zPosition = 12
        addChild(star!)
    }
    
    func buildStar2(){
        star2 = SKSpriteNode()
        star2 = SKSpriteNode(imageNamed: "BreathingGame/star")
        star2?.size = CGSize(width: 300, height: 300)
        star2?.position = CGPoint(x: 0, y: 0)
        star2?.zPosition = 10
        addChild(star2!)
    }
    
    func buildStar3(){
        star3 = SKSpriteNode()
        star3 = SKSpriteNode(imageNamed: "BreathingGame/star")
        star3?.size = CGSize(width: 300, height: 300)
        star3?.position = CGPoint(x: 0, y: 0)
        star3?.zPosition = 9
        addChild(star3!)
    }
    
    func buildStar4(){
        star4 = SKSpriteNode()
        star4 = SKSpriteNode(imageNamed: "BreathingGame/star")
        star4?.size = CGSize(width: 300, height: 300)
        star4?.position = CGPoint(x: 0, y: 0)
        star4?.zPosition = 8
        addChild(star4!)
    }
    
    func buildStar5(){
        star5 = SKSpriteNode()
        star5 = SKSpriteNode(imageNamed: "BreathingGame/star")
        star5?.size = CGSize(width: 300, height: 300)
        star5?.position = CGPoint(x: 0, y: 0)
        star5?.zPosition = 7
        addChild(star5!)
    }
    
    func buildStar6(){
        star6 = SKSpriteNode()
        star6 = SKSpriteNode(imageNamed: "BreathingGame/star")
        star6?.size = CGSize(width: 300, height: 300)
        star6?.position = CGPoint(x: 0, y: 0)
        star6?.zPosition = 6
        addChild(star6!)
    }
    
    func buildStar7(){
        star7 = SKSpriteNode()
        star7 = SKSpriteNode(imageNamed: "BreathingGame/star")
        star7?.size = CGSize(width: 300, height: 300)
        star7?.position = CGPoint(x: 0, y: 0)
        star7?.zPosition = 5
        addChild(star7!)
    }
    
    func buildStar8(){
        star8 = SKSpriteNode()
        star8 = SKSpriteNode(imageNamed: "BreathingGame/star")
        star8?.size = CGSize(width: 300, height: 300)
        star8?.position = CGPoint(x: 0, y: 0)
        star8?.zPosition = 4
        addChild(star8!)
    }
    
    func buildStar9(){
        star9 = SKSpriteNode()
        star9 = SKSpriteNode(imageNamed: "BreathingGame/star")
        star9?.size = CGSize(width: 300, height: 300)
        star9?.position = CGPoint(x: 0, y: 0)
        star9?.zPosition = 3
        addChild(star9!)
    }
    
    func buildStar10(){
        star10 = SKSpriteNode()
        star10 = SKSpriteNode(imageNamed: "BreathingGame/star")
        star10?.size = CGSize(width: 300, height: 300)
        star10?.position = CGPoint(x: 0, y: 0)
        star10?.zPosition = 2
        addChild(star10!)
    }
    
    func buildStar11(){
        star11 = SKSpriteNode()
        star11 = SKSpriteNode(imageNamed: "BreathingGame/star")
        star11?.size = CGSize(width: 300, height: 300)
        star11?.position = CGPoint(x: 0, y: 0)
        star11?.zPosition = 1
        addChild(star11!)
    }
    
    override public func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.scene?.removeAllChildren()
        
        if let _ = touches.first {
            let scene = ToDoListGame(fileNamed: "ToDoListGame/ToDoListGame")!
            scene.scaleMode = .aspectFit
            //            let transition = SKTransition.fade(with: UIColor(red: 0.3725, green: 1, blue: 0.8275, alpha: 1.0),duration: 1)
            //            let transition2 = SKTransition.push(with: .down, duration: 1)
            let transition = SKTransition.flipHorizontal(withDuration: 1)
            self.view?.presentScene(scene, transition: transition)
        }
    }
    
}



