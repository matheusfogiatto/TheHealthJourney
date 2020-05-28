/*:
 
 # Mental Health Journey
 
 Hope you enjoy the experience!!! 🧠🧠
 */

import PlaygroundSupport
import SpriteKit

let sceneView = SKView(frame: CGRect(x:0 , y:0, width: 720, height: 540))
if let scene = MainMenu(fileNamed: "Intro/MainMenu") {
    scene.scaleMode = .aspectFit
    sceneView.presentScene(scene)
}

PlaygroundSupport.PlaygroundPage.current.liveView = sceneView
