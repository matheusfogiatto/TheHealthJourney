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
    private var backgroundInstruction: SKSpriteNode?
    private var cloud: SKSpriteNode?
    
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
        
        let instructionLabel = self.childNode(withName: "instructionLabel") as? SKLabelNode
        instructionLabel!.text =
        """
        Drag and drop the tasks and fill in the To-Do List
        """
        instructionLabel!.lineBreakMode = NSLineBreakMode.byWordWrapping
        instructionLabel!.numberOfLines = 2
        instructionLabel!.preferredMaxLayoutWidth = 420
        
        buildBackground()
        buildBackgroundInstruction()
        buildInstructionCloud()
        buildTapContinue()
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
    }
    
    func buildIphoneMock(){
        let texture = SKTexture(imageNamed: "ToDoListGame/iphoneMock")
        iphoneMock = SKSpriteNode(texture: texture)
        iphoneMock?.size = CGSize(width: 672, height: 900)
        iphoneMock?.position = CGPoint(x: 230, y: 0)
        iphoneMock?.zPosition = 0
        iphoneMock?.name = "IPHONEMOCK"
        addChild(iphoneMock!)
    }
    
    func buildArticle(){
        let texture = SKTexture(imageNamed: "ToDoListGame/ReadArticles")
        articles = SKSpriteNode(texture: texture)
        articles?.size = CGSize(width: 427, height: 62)
        articles?.position = CGPoint(x: -346, y: 11)
        articles?.zPosition = 2
        articles?.name = "ARTICLE"
        addChild(articles!)
    }
    
    func buildKeynotes(){
        let texture = SKTexture(imageNamed: "ToDoListGame/Keynotes")
        keynotes = SKSpriteNode(texture: texture)
        keynotes?.size = CGSize(width: 427, height: 62)
        keynotes?.position = CGPoint(x: -346, y: -74)
        keynotes?.zPosition = 2
        keynotes?.name = "KEYNOTES"
        addChild(keynotes!)
    }
    
    func buildPlayground(){
        let texture = SKTexture(imageNamed: "ToDoListGame/playground")
        playground = SKSpriteNode(texture: texture)
        playground?.size = CGSize(width: 427, height: 62)
        playground?.position = CGPoint(x: -346, y: -160)
        playground?.zPosition = 2
        playground?.name = "PLAYGROUND"
        addChild(playground!)
    }
    
    func buildIndoorExercise(){
        let texture = SKTexture(imageNamed: "ToDoListGame/IndoorExercises")
        indoorExercise = SKSpriteNode(texture: texture)
        indoorExercise?.size = CGSize(width: 427, height: 62)
        indoorExercise?.position = CGPoint(x: -346, y: -246)
        indoorExercise?.zPosition = 2
        indoorExercise?.name = "INDOOR"
        addChild(indoorExercise!)
    }
    
    func buildExam(){
        let texture = SKTexture(imageNamed: "ToDoListGame/Exam")
        exam = SKSpriteNode(texture: texture)
        exam?.size = CGSize(width: 427, height: 62)
        exam?.position = CGPoint(x: -346, y: -332)
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
    
    func buildInstructionCloud(){
        cloud = SKSpriteNode()
        cloud = SKSpriteNode(imageNamed: "BreathingGame/cloud")
        cloud?.size = CGSize(width: 840, height: 360)
        cloud?.position = CGPoint(x: 0, y: 0)
        cloud?.zPosition = 20
        addChild(cloud!)
    }
    
    func buildBackgroundInstruction(){
        let texture = SKTexture(imageNamed: "BreathingGame/secondBackground")
        backgroundInstruction = SKSpriteNode(texture: texture)
        backgroundInstruction?.size = CGSize(width: 960, height: 675)
        backgroundInstruction?.position = CGPoint(x: 0, y: 0)
        backgroundInstruction?.zPosition = 19
        backgroundInstruction?.name = "BACKGROUND"
        addChild(backgroundInstruction!)
    }
    
    @objc func buildTapContinue(){
        let texture = SKTexture(imageNamed: "Intro/continueButton")
        continueButton = SKSpriteNode(texture: texture)
        continueButton?.size = CGSize(width: 336, height: 90)
        continueButton?.position = CGPoint(x: 333, y: -320)
        continueButton?.zPosition = 5
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
            articles?.removeFromParent()
        }else if name == "KEYNOTES"{
            count += 1
            keynotes?.removeFromParent()
        }else if name == "PLAYGROUND"{
            count += 1
            playground?.removeFromParent()
        }else if name == "INDOOR"{
            count += 1
            indoorExercise?.removeFromParent()
        }else if name == "EXAM"{
            count += 1
            exam?.removeFromParent()
        }
        
        if count >= 5{
            Timer.scheduledTimer(timeInterval: 1.5, target: self, selector: #selector(buildTapContinue), userInfo: nil, repeats: false)
            iphoneMock!.run(SKAction.moveBy(x: -230, y: 0, duration: 1))
            empty1!.run(SKAction.moveBy(x: -230, y: 0, duration: 1))
            empty2!.run(SKAction.moveBy(x: -230, y: 0, duration: 1))
            empty3!.run(SKAction.moveBy(x: -230, y: 0, duration: 1))
            empty4!.run(SKAction.moveBy(x: -230, y: 0, duration: 1))
            empty5!.run(SKAction.moveBy(x: -230, y: 0, duration: 1))
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
            backgroundInstruction!.removeFromParent()
            cloud!.removeFromParent()
            continueButton!.removeFromParent()
            
            let instructionLabel = self.childNode(withName: "instructionLabel") as? SKLabelNode
            instructionLabel!.text = ""
            
            let titleLabel = self.childNode(withName: "title") as? SKLabelNode
            titleLabel!.text = ""
        }else if count >= 5 && iphoneMock!.position.x == 0{
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

