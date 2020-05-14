import AVFoundation
import SpriteKit
import PlaygroundSupport
import UIKit

public class MainMenu: SKScene {
    
    private var brainRelax: SKSpriteNode?
    private var logoTitle: SKSpriteNode?
    private var continueButton: SKSpriteNode?
    private var background: SKSpriteNode?
    
    override public func didMove(to view: SKView) {
        
        buildBrainRelax()
        buildTitle()
        buildTapContinue()
        buildBackground()
        loadSweetFont()
        loadBalsamiqFont()
    }
    
    func loadSweetFont(){
        let cfURL = Bundle.main.url(forResource: "Fonts/sweet purple", withExtension: "ttf")! as CFURL
        CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)
        var fontNames: [[AnyObject]] = []
        for name in UIFont.familyNames {
           fontNames.append(UIFont.fontNames(forFamilyName: name) as [AnyObject])
        }
    }
    
    func loadBalsamiqFont(){
        let cfURL = Bundle.main.url(forResource: "Fonts/BalsamiqSans-Regular", withExtension: "ttf")! as CFURL
        CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)
        var fontNames: [[AnyObject]] = []
        for name in UIFont.familyNames {
           fontNames.append(UIFont.fontNames(forFamilyName: name) as [AnyObject])
        }
    }
    
    func buildTitle(){
        let texture = SKTexture(imageNamed: "Intro/logoTitle")
        logoTitle = SKSpriteNode(texture: texture)
        logoTitle?.size = CGSize(width: 504, height: 432)
        logoTitle?.position = CGPoint(x: -252, y: 45)
        logoTitle?.zPosition = 0
        logoTitle?.name = "LOGOTITLE"
        addChild(logoTitle!)
    }
    
    func buildBrainRelax(){
        let texture = SKTexture(imageNamed: "Intro/brainRelax")
        brainRelax = SKSpriteNode(texture: texture)
        brainRelax?.size = CGSize(width: 504, height: 432)
        brainRelax?.position = CGPoint(x: 300, y: 45)
        brainRelax?.zPosition = 0
        brainRelax?.name = "BRAINRELAX"
        addChild(brainRelax!)
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
        continueButton?.position = CGPoint(x: 0, y: -360)
        continueButton?.zPosition = 0
        continueButton?.name = "CONTINUEBUTTON"
        addChild(continueButton!)
    }
    
    override public func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if let _ = touches.first {
            let scene = Intro1(fileNamed: "Intro/Intro1")!
            scene.scaleMode = .aspectFit
            let transition = SKTransition.push(with: .left, duration: 1)
            self.view?.presentScene(scene, transition: transition)
        }
    }
    
}
