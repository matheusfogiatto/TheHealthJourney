import Foundation
import SpriteKit

public class ToDoListGame: SKScene {
    
    private var articles: SKSpriteNode?
    private var keynotes: SKSpriteNode?
    private var playground: SKSpriteNode?
    private var indoorExercise: SKSpriteNode?
    private var exam: SKSpriteNode?
    private var iphoneMock: SKSpriteNode?
    
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
    
    override public func didMove(to view: SKView) {
        
        empty1 = childNode(withName: "empty1") as? SKSpriteNode
        empty2 = childNode(withName: "empty2") as? SKSpriteNode
        empty3 = childNode(withName: "empty3") as? SKSpriteNode
        empty4 = childNode(withName: "empty4") as? SKSpriteNode
        empty5 = childNode(withName: "empty5") as? SKSpriteNode
        
//        var articles = childNode(withName: "articles") as? SKSpriteNode
//        articles = SKSpriteNode(imageNamed: "helpGame2.png")
        buildIphoneMock()
        buildArticle()
        buildKeynotes()
        buildPlayground()
        buildIndoorExercise()
        buildExam()
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
            articles?.removeFromParent()
        }else if name == "KEYNOTES"{
            keynotes?.removeFromParent()
        }else if name == "PLAYGROUND"{
            playground?.removeFromParent()
        }else if name == "INDOOR"{
            indoorExercise?.removeFromParent()
        }else if name == "EXAM"{
            exam?.removeFromParent()
        }
    }
    
    public override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first, let node = self.currentNode {
            let touchLocation = touch.location(in: self)
            node.position = touchLocation
        }
    }
    
     public override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
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
}

