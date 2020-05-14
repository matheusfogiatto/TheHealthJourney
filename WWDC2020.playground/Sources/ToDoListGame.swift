import Foundation
import SpriteKit

public class ToDoListGame: SKScene {
    
    private var articles: SKSpriteNode?
    private var keynotes: SKSpriteNode?
    private var playground: SKSpriteNode?
    private var indoorExercise: SKSpriteNode?
    private var exam: SKSpriteNode?
    private var iphoneMock: SKSpriteNode?
    private var continueButton: SKSpriteNode?
    private var background: SKSpriteNode?
    private var labelCount: SKLabelNode?
    private var instruction: SKSpriteNode?
    
    private var empty1: SKSpriteNode?
    private var empty2: SKSpriteNode?
    private var empty3: SKSpriteNode?
    private var empty4: SKSpriteNode?
    private var empty5: SKSpriteNode?
    
    // Status
    private var empty1Status: Bool = true
    private var empty2Status: Bool = true
    private var empty3Status: Bool = true
    private var empty4Status: Bool = true
    private var empty5Status: Bool = true
    
    private var currentNode: SKSpriteNode?
    private var count = 0
    private var first = true
    
    override public func didMove(to view: SKView) {
        buildBackground()
        buildInstruction()
    }
    
    func buildThings(){
        empty1 = childNode(withName: "empty1") as? SKSpriteNode
        empty2 = childNode(withName: "empty2") as? SKSpriteNode
        empty3 = childNode(withName: "empty3") as? SKSpriteNode
        empty4 = childNode(withName: "empty4") as? SKSpriteNode
        empty5 = childNode(withName: "empty5") as? SKSpriteNode
        
        buildIphoneMock()
        buildArticle()
        buildKeynotes()
        buildPlayground()
        buildIndoorExercise()
        buildExam()
        buildCount()
    }
    
    func buildCount(){
        let label = self.childNode(withName: "countLabel") as? SKLabelNode
        label!.text = "\(count)/5"
    }
    
    func buildIphoneMock(){
        let texture = SKTexture(imageNamed: "ToDoListGame/iphoneMockupEmpty")
        iphoneMock = SKSpriteNode(texture: texture)
        iphoneMock?.size = CGSize(width: 481, height: 773)
        iphoneMock?.position = CGPoint(x: 291.265, y: 0)
        iphoneMock?.zPosition = 0
        iphoneMock?.name = "IPHONEMOCK"
        addChild(iphoneMock!)
    }
    
    func buildArticle(){
        let texture = SKTexture(imageNamed: "ToDoListGame/ReadArticles")
        articles = SKSpriteNode(texture: texture)
        articles?.size = CGSize(width: 300, height: 22.68)
        articles?.position = CGPoint(x: -222.139, y: -91.856)
        articles?.zPosition = 2
        articles?.name = "ARTICLE"
        addChild(articles!)
    }
    
    func buildKeynotes(){
        let texture = SKTexture(imageNamed: "ToDoListGame/Keynotes")
        keynotes = SKSpriteNode(texture: texture)
        keynotes?.size = CGSize(width: 300, height: 22.68)
        keynotes?.position = CGPoint(x: -222.139, y: -43.157)
        keynotes?.zPosition = 2
        keynotes?.name = "KEYNOTES"
        addChild(keynotes!)
    }
    
    func buildPlayground(){
        let texture = SKTexture(imageNamed: "ToDoListGame/Playground")
        playground = SKSpriteNode(texture: texture)
        playground?.size = CGSize(width: 300, height: 22.68)
        playground?.position = CGPoint(x: -222.139, y: 14.164)
        playground?.zPosition = 2
        playground?.name = "PLAYGROUND"
        addChild(playground!)
    }
    
    func buildIndoorExercise(){
        let texture = SKTexture(imageNamed: "ToDoListGame/IndoorExercises")
        indoorExercise = SKSpriteNode(texture: texture)
        indoorExercise?.size = CGSize(width: 300, height: 22.68)
        indoorExercise?.position = CGPoint(x: -222.139, y: 60.457)
        indoorExercise?.zPosition = 2
        indoorExercise?.name = "INDOOR"
        addChild(indoorExercise!)
    }
    
    func buildExam(){
        let texture = SKTexture(imageNamed: "ToDoListGame/Exam")
        exam = SKSpriteNode(texture: texture)
        exam?.size = CGSize(width: 300, height: 22.68)
        exam?.position = CGPoint(x: -222.139, y: 105.503)
        exam?.zPosition = 2
        exam?.name = "EXAM"
        addChild(exam!)
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
    
    func buildInstruction(){
        instruction = SKSpriteNode()
        instruction = SKSpriteNode(imageNamed: "ToDoListGame/introduction2")
        instruction?.size = CGSize(width: 672, height: 226)
        instruction?.position = CGPoint(x: 0, y: 0)
        instruction?.zPosition = 20
        addChild(instruction!)
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
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let location = touch.location(in: self)
            
            let touchedNodes = self.nodes(at: location)
            for node in touchedNodes.reversed() {
                if node.name == "ARTICLE"{
                    self.currentNode = node as? SKSpriteNode ?? SKSpriteNode()
                }else if node.name == "KEYNOTES"{
                    self.currentNode = node as? SKSpriteNode ?? SKSpriteNode()
                }else if node.name == "PLAYGROUND"{
                    self.currentNode = node as? SKSpriteNode ?? SKSpriteNode()
                }else if node.name == "INDOOR"{
                    self.currentNode = node as? SKSpriteNode ?? SKSpriteNode()
                }else if node.name == "EXAM"{
                    self.currentNode = node as? SKSpriteNode ?? SKSpriteNode()
                }
            }
        }
    }
    
    public func matchNode(name: String){
        if name == "ARTICLE"{
            count += 1
            let label = self.childNode(withName: "countLabel") as? SKLabelNode
            label!.text = "\(count)/5"
            articles?.removeFromParent()
        }else if name == "KEYNOTES"{
            count += 1
            let label = self.childNode(withName: "countLabel") as? SKLabelNode
            label!.text = "\(count)/5"
            keynotes?.removeFromParent()
        }else if name == "PLAYGROUND"{
            count += 1
            let label = self.childNode(withName: "countLabel") as? SKLabelNode
            label!.text = "\(count)/5"
            playground?.removeFromParent()
        }else if name == "INDOOR"{
            count += 1
            let label = self.childNode(withName: "countLabel") as? SKLabelNode
            label!.text = "\(count)/5"
            indoorExercise?.removeFromParent()
        }else if name == "EXAM"{
            count += 1
            let label = self.childNode(withName: "countLabel") as? SKLabelNode
            label!.text = "\(count)/5"
            exam?.removeFromParent()
        }
        
        if count >= 5{
            buildTapContinue()
            iphoneMock!.run(SKAction.moveBy(x: -400, y: 0, duration: 1))
            empty1!.run(SKAction.moveBy(x: -400, y: 0, duration: 1))
            empty2!.run(SKAction.moveBy(x: -400, y: 0, duration: 1))
            empty3!.run(SKAction.moveBy(x: -400, y: 0, duration: 1))
            empty4!.run(SKAction.moveBy(x: -400, y: 0, duration: 1))
            empty5!.run(SKAction.moveBy(x: -400, y: 0, duration: 1))
        }
    }
    
    public override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first, let node = self.currentNode {
            let touchLocation = touch.location(in: self)
            node.position = touchLocation
        }
    }
    
     public override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?){
        if first{
            first = false
            buildThings()
            instruction!.removeFromParent()
        }else if count >= 5 && iphoneMock!.position.x == -108.73511505126953{
            if let _ = touches.first {
                let scene = ToDoDescription(fileNamed: "ToDoListGame/ToDoDescription")!
                scene.scaleMode = .aspectFit
                let transition = SKTransition.push(with: .up, duration: 1)
                self.view?.presentScene(scene, transition: transition)
            }
        }else{
            if let currentNode = currentNode {
                if currentNode.frame.intersects(empty1?.frame ?? CGRect()) && empty1Status{
                    empty1!.texture = currentNode.texture
                    empty1!.alpha = 1
                    matchNode(name: currentNode.name ?? "")
                    empty1Status = false
                }else if currentNode.frame.intersects(empty2?.frame ?? CGRect()) && empty2Status{
                    empty2!.texture = currentNode.texture
                    empty2!.alpha = 1
                    matchNode(name: currentNode.name ?? "")
                    empty2Status = false
                }else if currentNode.frame.intersects(empty3?.frame ?? CGRect()) && empty3Status{
                    empty3!.texture = currentNode.texture
                    empty3!.alpha = 1
                    matchNode(name: currentNode.name ?? "")
                    empty3Status = false
                }else if currentNode.frame.intersects(empty4?.frame ?? CGRect()) && empty4Status{
                    empty4!.texture = currentNode.texture
                    empty4!.alpha = 1
                    matchNode(name: currentNode.name ?? "")
                    empty4Status = false
                }else if currentNode.frame.intersects(empty5?.frame ?? CGRect()) && empty5Status{
                    empty5!.texture = currentNode.texture
                    empty5!.alpha = 1
                    matchNode(name: currentNode.name ?? "")
                    empty5Status = false
                }
            }
            self.currentNode = nil
        }
        self.currentNode = nil
    }
}

