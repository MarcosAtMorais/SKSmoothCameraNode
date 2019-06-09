//
//  GameScene.swift
//  SKSmoothCameraNode
//
//  Created by Marcos Morais on 08/06/19.
//  Copyright © 2019 Bit Journey Labs. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    // MARK: SKSmoothCameraNode Declaration
    
    // STEP 1
    let smoothCamera: SKSmoothCameraNode = {
        
        let smoothCamera = SKSmoothCameraNode(cameraAlpha: 0.8)
        smoothCamera.setScale(2.0)
        return smoothCamera 
        
    }()
    
    // MARK: Other Declarations
    // (only for demonstration purposes)
    
    lazy var background: SKSpriteNode = {
        
        let background = SKSpriteNode(imageNamed: "Background")
        background.texture?.filteringMode = .nearest
        background.setScale(4)
        background.position = CGPoint(x: (self.scene?.size.width ?? 0.0)*0.50, y: (self.scene?.size.height ?? 0.0)*0.50)
        background.zPosition = -1
        return background
        
    }()
    
    lazy var player: SKShapeNode = {
        
        let player = SKShapeNode(ellipseOf: CGSize(width: 50, height: 50))
        player.fillColor = .black
        player.strokeColor = .white
        player.lineWidth = 2.5
        player.position = CGPoint(x: (self.scene?.size.width ?? 0.0)*0.25, y: (self.scene?.size.height ?? 0.0)*0.25)
        return player
        
    }()
    
    lazy var playerTrail: SKEmitterNode = {
        
        let trailEmitter = SKEmitterNode(fileNamed: "TrailParticleEffect")
        return trailEmitter ?? SKEmitterNode()
        
    }()
    
    // MARK: Initializers
    override init(size: CGSize) {
        super.init(size: size)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Setup Methods
    override func didMove(to view: SKView) {
        
        // STEP 2
        // You should attribute the smoothCamera created above as the SKScene 'camera' property reference here.
        self.camera = smoothCamera
        
        // Other setups (only for demonstration purposes)
        
        self.addChild(self.background)
        
        self.addChild(self.player)
        self.player.addChild(self.playerTrail)
        self.playerTrail.targetNode = self
        
    }
    
    // MARK: Render Cycle Methods
    override func update(_ currentTime: TimeInterval) {
        
        // STEP 3
       // This method should be called so that the camera gets updated with the position of the target node.
       // In this case, the player is the target node. So we send the position property as a parameter (CGPoint).
        self.smoothCamera.setCamera(position: self.player.position)
        
    }
    
}
