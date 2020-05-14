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
    private var continueButton: SKSpriteNode?
    private var background: SKSpriteNode?
    private var instruction: SKSpriteNode?
    
    private let starNormalWidth = 200.0
    private let timeInterval = 4.0
    private var countLabel = 0
    private var first = true
    private var canContinue = false
    
    override public func didMove(to view: SKView) {
        
        buildBackground()
        buildInstruction()
    }
    
    override public func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
    func placeThings(){
        let label = self.childNode(withName: "textLabel") as? SKLabelNode
        label!.lineBreakMode = NSLineBreakMode.byWordWrapping
        label!.numberOfLines = 0
        label!.text = "Inhale"
        label!.preferredMaxLayoutWidth = 130
        
        let label2 = self.childNode(withName: "textLabel2") as? SKLabelNode
        label2!.lineBreakMode = NSLineBreakMode.byWordWrapping
        label2!.numberOfLines = 0
        label2!.text = "..."
        label2!.preferredMaxLayoutWidth = 130
        
        let label3 = self.childNode(withName: "textLabel3") as? SKLabelNode
        label3!.text = "Exhale"
        label3!.lineBreakMode = NSLineBreakMode.byWordWrapping
        label3!.numberOfLines = 0
        label3!.alpha = 0
        label3!.preferredMaxLayoutWidth = 130
        
        let label5 = self.childNode(withName: "textLabel5") as? SKLabelNode
        label5!.lineBreakMode = NSLineBreakMode.byWordWrapping
        label5!.numberOfLines = 0
        label5!.text = "Hold"
        label5!.preferredMaxLayoutWidth = 130
        
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
        
        changeTextLabels(duration: timeInterval, node: label)
        changeTextLabels2(duration: timeInterval, node: label5)
        changeTextLabels3(duration: timeInterval, node: label3)
    }
    
    func resizeAndRotate(widthQuantity: Double, angleQuantity: CGFloat, duration: Double, node: SKSpriteNode?){
        let resize = SKAction.resize(byWidth: CGFloat(starNormalWidth*widthQuantity), height: CGFloat(starNormalWidth*widthQuantity), duration: duration)
        let angle = SKAction.rotate(byAngle: -(.pi*angleQuantity), duration: duration)
        let firstAnimation = SKAction.group([resize,angle])
        
        let wait = SKAction.wait(forDuration: 2)
        
        let resize2 = SKAction.resize(byWidth: -(CGFloat(starNormalWidth*widthQuantity)), height: -(CGFloat(starNormalWidth*widthQuantity)), duration: duration+2)
        let angle2 = SKAction.rotate(byAngle: (.pi*angleQuantity), duration: duration+2)
        let secondAnimation = SKAction.group([resize2,angle2])
        
        let arrayAnimations = [firstAnimation, wait, secondAnimation]
        
        node?.run(SKAction.repeatForever(SKAction.sequence(arrayAnimations)))
    }
    
    func changeTextLabels(duration: Double, node: SKLabelNode?){
        let action = SKAction.fadeAlpha(to: 1, duration: 0.000000001)
        let wait = SKAction.wait(forDuration: 4.0)
        let action2 = SKAction.fadeAlpha(to: 0, duration: 0.000000001)
        let wait2 = SKAction.wait(forDuration: 8.0)
        
        
        let arrayAnimations = [action, wait, action2, wait2]
        node?.run(SKAction.repeatForever(SKAction.sequence(arrayAnimations)))
    }
    
    func changeTextLabels2(duration: Double, node: SKLabelNode?){
        let action = SKAction.fadeAlpha(to: 0, duration: 0.000000001)
        let wait = SKAction.wait(forDuration: 4.0)
        let action2 = SKAction.fadeAlpha(to: 1, duration: 0.000000001)
        let wait2 = SKAction.wait(forDuration: 2.0)
        let action3 = SKAction.fadeAlpha(to: 0, duration: 0.000000001)
        let wait3 = SKAction.wait(forDuration: 6.0)
        
        
        let arrayAnimations = [action, wait, action2, wait2, action3, wait3]
        node?.run(SKAction.repeatForever(SKAction.sequence(arrayAnimations)))
    }
    
    func changeTextLabels3(duration: Double, node: SKLabelNode?){
        let action = SKAction.fadeAlpha(to: 0, duration: 0.000000001)
        let wait = SKAction.wait(forDuration: 6.0)
        let action2 = SKAction.fadeAlpha(to: 1, duration: 0.000000001)
        let wait2 = SKAction.wait(forDuration: 6.0)
        let action3 = SKAction.fadeAlpha(to: 0, duration: 0.000000001)
        
        
        let arrayAnimations = [action, wait, action2, wait2, action3]
        node?.run(SKAction.repeatForever(SKAction.sequence(arrayAnimations)))
    }
    
    func buildInstruction(){
        instruction = SKSpriteNode()
        instruction = SKSpriteNode(imageNamed: "BreathingGame/Instruction")
        instruction?.size = CGSize(width: 672, height: 226)
        instruction?.position = CGPoint(x: 0, y: 0)
        instruction?.zPosition = 20
        addChild(instruction!)
    }
    
    func buildStar(){
        star = SKSpriteNode()
        star = SKSpriteNode(imageNamed: "BreathingGame/star")
        star?.size = CGSize(width: 300, height: 300)
        star?.position = CGPoint(x: 0, y: -55)
        star?.zPosition = 12
        addChild(star!)
    }
    
    func buildStar2(){
        star2 = SKSpriteNode()
        star2 = SKSpriteNode(imageNamed: "BreathingGame/star")
        star2?.size = CGSize(width: 300, height: 300)
        star2?.position = CGPoint(x: 0, y: -55)
        star2?.zPosition = 10
        addChild(star2!)
    }
    
    func buildStar3(){
        star3 = SKSpriteNode()
        star3 = SKSpriteNode(imageNamed: "BreathingGame/star")
        star3?.size = CGSize(width: 300, height: 300)
        star3?.position = CGPoint(x: 0, y: -55)
        star3?.zPosition = 9
        addChild(star3!)
    }
    
    func buildStar4(){
        star4 = SKSpriteNode()
        star4 = SKSpriteNode(imageNamed: "BreathingGame/star")
        star4?.size = CGSize(width: 300, height: 300)
        star4?.position = CGPoint(x: 0, y: -55)
        star4?.zPosition = 8
        addChild(star4!)
    }
    
    func buildStar5(){
        star5 = SKSpriteNode()
        star5 = SKSpriteNode(imageNamed: "BreathingGame/star")
        star5?.size = CGSize(width: 300, height: 300)
        star5?.position = CGPoint(x: 0, y: -55)
        star5?.zPosition = 7
        addChild(star5!)
    }
    
    func buildStar6(){
        star6 = SKSpriteNode()
        star6 = SKSpriteNode(imageNamed: "BreathingGame/star")
        star6?.size = CGSize(width: 300, height: 300)
        star6?.position = CGPoint(x: 0, y: -55)
        star6?.zPosition = 6
        addChild(star6!)
    }
    
    func buildStar7(){
        star7 = SKSpriteNode()
        star7 = SKSpriteNode(imageNamed: "BreathingGame/star")
        star7?.size = CGSize(width: 300, height: 300)
        star7?.position = CGPoint(x: 0, y: -55)
        star7?.zPosition = 5
        addChild(star7!)
    }
    
    func buildStar8(){
        star8 = SKSpriteNode()
        star8 = SKSpriteNode(imageNamed: "BreathingGame/star")
        star8?.size = CGSize(width: 300, height: 300)
        star8?.position = CGPoint(x: 0, y: -55)
        star8?.zPosition = 4
        addChild(star8!)
    }
    
    func buildStar9(){
        star9 = SKSpriteNode()
        star9 = SKSpriteNode(imageNamed: "BreathingGame/star")
        star9?.size = CGSize(width: 300, height: 300)
        star9?.position = CGPoint(x: 0, y: -55)
        star9?.zPosition = 3
        addChild(star9!)
    }
    
    func buildStar10(){
        star10 = SKSpriteNode()
        star10 = SKSpriteNode(imageNamed: "BreathingGame/star")
        star10?.size = CGSize(width: 300, height: 300)
        star10?.position = CGPoint(x: 0, y: -55)
        star10?.zPosition = 2
        addChild(star10!)
    }
    
    func buildStar11(){
        star11 = SKSpriteNode()
        star11 = SKSpriteNode(imageNamed: "BreathingGame/star")
        star11?.size = CGSize(width: 300, height: 300)
        star11?.position = CGPoint(x: 0, y: -55)
        star11?.zPosition = 1
        addChild(star11!)
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
    
    @objc func buildTapContinue(){
        let texture = SKTexture(imageNamed: "Intro/continueButton")
        continueButton = SKSpriteNode(texture: texture)
        continueButton?.size = CGSize(width: 336, height: 90)
        continueButton?.position = CGPoint(x: 333, y: -320)
        continueButton?.zPosition = 0
        continueButton?.name = "CONTINUEBUTTON"
        addChild(continueButton!)
        canContinue = true
    }
    
    override public func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if first{
            first = false
            placeThings()
            instruction!.removeFromParent()
            Timer.scheduledTimer(timeInterval: 24, target: self, selector: #selector(buildTapContinue), userInfo: nil, repeats: false)
        }else if canContinue{
            if let _ = touches.first {
                let scene = BreathingDescription(fileNamed: "BreathingGame/BreathingDescription")!
                scene.scaleMode = .aspectFit
                let transition = SKTransition.push(with: .left, duration: 1)
                self.view?.presentScene(scene, transition: transition)
            }
        }
    }
}



