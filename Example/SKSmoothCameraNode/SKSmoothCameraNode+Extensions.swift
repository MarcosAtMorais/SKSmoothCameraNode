//
//  SKSmoothCameraNode+Extensions.swift
//  SKSmoothCameraNode
//
//  Created by Marcos Morais on 08/06/19.
//  Copyright © 2019 Bit Journey Labs. All rights reserved.
//

import SpriteKit

public extension CGPoint {
    
    /**
     * Adds two CGPoint values and returns the result as a new CGPoint.
     */
    static func + (left: CGPoint, right: CGPoint) -> CGPoint {
        return CGPoint(x: left.x + right.x, y: left.y + right.y)
    }
    
    /**
     * Increments a CGPoint with the value of another.
     */
    static func += (left: inout CGPoint, right: CGPoint) {
        left = left + right
    }
    
    /**
     * Adds a CGVector to this CGPoint and returns the result as a new CGPoint.
     */
    static func + (left: CGPoint, right: CGVector) -> CGPoint {
        return CGPoint(x: left.x + right.dx, y: left.y + right.dy)
    }
    
    /**
     * Increments a CGPoint with the value of a CGVector.
     */
    static func += (left: inout CGPoint, right: CGVector) {
        left = left + right
    }
    
    /**
     * Subtracts two CGPoint values and returns the result as a new CGPoint.
     */
    static func - (left: CGPoint, right: CGPoint) -> CGPoint {
        return CGPoint(x: left.x - right.x, y: left.y - right.y)
    }
    
    /**
     * Decrements a CGPoint with the value of another.
     */
    static func -= (left: inout CGPoint, right: CGPoint) {
        left = left - right
    }
    
    /**
     * Subtracts a CGVector from a CGPoint and returns the result as a new CGPoint.
     */
    static func - (left: CGPoint, right: CGVector) -> CGPoint {
        return CGPoint(x: left.x - right.dx, y: left.y - right.dy)
    }
    
    /**
     * Decrements a CGPoint with the value of a CGVector.
     */
    static func -= (left: inout CGPoint, right: CGVector) {
        left = left - right
    }
    
    /**
     * Multiplies two CGPoint values and returns the result as a new CGPoint.
     */
    static func * (left: CGPoint, right: CGPoint) -> CGPoint {
        return CGPoint(x: left.x * right.x, y: left.y * right.y)
    }
    
    /**
     * Multiplies a CGPoint with another.
     */
    static func *= (left: inout CGPoint, right: CGPoint) {
        left = left * right
    }
    
    /**
     * Multiplies the x and y fields of a CGPoint with the same scalar value and
     * returns the result as a new CGPoint.
     */
    static func * (point: CGPoint, scalar: CGFloat) -> CGPoint {
        return CGPoint(x: point.x * scalar, y: point.y * scalar)
    }
    
    /**
     * Multiplies the x and y fields of a CGPoint with the same scalar value.
     */
    static func *= (point: inout CGPoint, scalar: CGFloat) {
        point = point * scalar
    }
    
    /**
     * Multiplies a CGPoint with a CGVector and returns the result as a new CGPoint.
     */
    static func * (left: CGPoint, right: CGVector) -> CGPoint {
        return CGPoint(x: left.x * right.dx, y: left.y * right.dy)
    }
    
    /**
     * Multiplies a CGPoint with a CGVector.
     */
    static func *= (left: inout CGPoint, right: CGVector) {
        left = left * right
    }
    
    /**
     * Divides two CGPoint values and returns the result as a new CGPoint.
     */
    static func / (left: CGPoint, right: CGPoint) -> CGPoint {
        return CGPoint(x: left.x / right.x, y: left.y / right.y)
    }
    
    /**
     * Divides a CGPoint by another.
     */
    static func /= (left: inout CGPoint, right: CGPoint) {
        left = left / right
    }
    
    /**
     * Divides the x and y fields of a CGPoint by the same scalar value and returns
     * the result as a new CGPoint.
     */
    static func / (point: CGPoint, scalar: CGFloat) -> CGPoint {
        return CGPoint(x: point.x / scalar, y: point.y / scalar)
    }
    
    /**
     * Divides the x and y fields of a CGPoint by the same scalar value.
     */
    static func /= (point: inout CGPoint, scalar: CGFloat) {
        point = point / scalar
    }
    
    /**
     * Divides a CGPoint by a CGVector and returns the result as a new CGPoint.
     */
    static func / (left: CGPoint, right: CGVector) -> CGPoint {
        return CGPoint(x: left.x / right.dx, y: left.y / right.dy)
    }
    
    /**
     * Divides a CGPoint by a CGVector.
     */
    static func /= (left: inout CGPoint, right: CGVector) {
        left = left / right
    }

    
}
