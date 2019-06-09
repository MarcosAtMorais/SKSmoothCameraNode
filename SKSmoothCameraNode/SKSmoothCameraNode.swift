//
//  SKSmoothCameraNode.swift
//  SKSmoothCameraNode
//
//  Created by Marcos Morais on 08/06/19.
//  Copyright © 2019 Bit Journey Labs. All rights reserved.
//

import SpriteKit

/**
 An object that subclasses SKCameraNode and adds smoothing to its core.
 - SeeAlso: SKCameraNode
 */
class SKSmoothCameraNode: SKCameraNode {
    
    /** This attribute determines the delay in which the smooth camera is going to be oriented.
        It is highly recommended that this value stays in between 2.0 and 0.1.
     
        This attribute can be changed during gameplay as you wish.
     */
    var cameraAlpha: CGFloat = 0.7 {
        didSet {
            self.cameraAlpha = self.cameraAlpha/10
        }
    }
    
    /** This position is the one to be normalized and updated into the position of the target node.
     */
    private var smoothCameraPosition: CGPoint = CGPoint.zero
    
    /**
     
     Creates a camera with the smoothing effect. It takes a camera alpha that acts as a multiplier for the delay.
     - parameter cameraAlpha: Multiplier in which the camera is going to be oriented. The default value is 0.7.
     - Returns: None.
     - Requires: iOS 9.0 or above
     */
    init(cameraAlpha: CGFloat = 0.7) {
        
        super.init()
        
        defer {
            self.cameraAlpha = cameraAlpha
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /**
     Method that updates the camera with the desired position related to the Scene.
     - parameter position: the position of the target node in which the camera is going to be updated.
     */
    public func setCamera(position: CGPoint) {
        
        let actualPosition = position
        let smoothX = self.smoothCameraPosition.x * (1-self.cameraAlpha) + (actualPosition.x * self.cameraAlpha)
        let smoothY = self.smoothCameraPosition.y * (1-self.cameraAlpha) + (actualPosition.y * self.cameraAlpha)
        
        self.smoothCameraPosition = CGPoint(x: smoothX, y: smoothY)
        
        self.position = self.smoothCameraPosition
        
    }

}
