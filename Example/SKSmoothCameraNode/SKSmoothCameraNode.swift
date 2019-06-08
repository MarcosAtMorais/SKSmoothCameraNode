//
//  SKSmoothCameraNode.swift
//  SKSmoothCameraNode
//
//  Created by Marcos Morais on 08/06/19.
//  Copyright © 2019 Bit Journey Labs. All rights reserved.
//

import SpriteKit

class SKSmoothCameraNode: SKCameraNode {
    
    let cameraAlpha: CGFloat = 0.050
    var smoothCameraPosition: CGPoint = CGPoint.zero
    
    func setCamera(position: CGPoint) {
        
        let actualPosition = position
        let smoothX = self.smoothCameraPosition.x * (1-self.cameraAlpha) + (actualPosition.x * self.cameraAlpha)
        let smoothY = self.smoothCameraPosition.y * (1-self.cameraAlpha) + (actualPosition.y * self.cameraAlpha)
        
        self.smoothCameraPosition = CGPoint(x: smoothX, y: smoothY)
        
        self.position = self.smoothCameraPosition
        
    }

}
