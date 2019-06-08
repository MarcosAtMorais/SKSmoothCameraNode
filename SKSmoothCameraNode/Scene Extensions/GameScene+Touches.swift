//
//  GameScene+Touches.swift
//  SKSmoothCameraNode
//
//  Created by Marcos Morais on 08/06/19.
//  Copyright © 2019 Bit Journey Labs. All rights reserved.
//

import SpriteKit

extension GameScene {
    
    // MARK: Touches Methods
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        guard let touch = touches.first else {
            return
        }
        
        let touchLocation = touch.location(in: self)
        self.player.position = touchLocation
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        guard let touch = touches.first else {
            return
        }
        
        let touchLocation = touch.location(in: self)
        self.player.position = touchLocation
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
}
