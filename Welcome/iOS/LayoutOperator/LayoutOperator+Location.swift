//
//  LayoutOperator+Location.swift
//  Welcome (iOS)
//
//  Created by lujunhui.2nd on 2022/3/27.
//

import UIKit

// MARK: - LayoutAnchor
public
protocol LayoutAnchor {
    func constraint(equalTo anchor: Self,
                    constant: CGFloat) -> NSLayoutConstraint
    func constraint(greaterThanOrEqualTo anchor: Self,
                    constant: CGFloat) -> NSLayoutConstraint
    func constraint(lessThanOrEqualTo anchor: Self,
                    constant: CGFloat) -> NSLayoutConstraint
}
extension NSLayoutAnchor: LayoutAnchor {}

public
struct LayoutAnchorProperty<Anchor: LayoutAnchor> {
    let anchor: Anchor
}

// MARK: - Property
extension LayoutAnchorProperty {
    func equal(to otherAnchor: Anchor, offsetBy
               constant: CGFloat = 0) {
        anchor.constraint(equalTo: otherAnchor,
                          constant: constant).isActive = true
    }

    func greaterThanOrEqual(to otherAnchor: Anchor,
                            offsetBy constant: CGFloat = 0) {
        anchor.constraint(greaterThanOrEqualTo: otherAnchor,
                          constant: constant).isActive = true
    }

    func lessThanOrEqual(to otherAnchor: Anchor,
                         offsetBy constant: CGFloat = 0) {
        anchor.constraint(lessThanOrEqualTo: otherAnchor,
                          constant: constant).isActive = true
    }
}


public
extension LayoutAnchor where Self : NSLayoutXAxisAnchor {
    static
    func +(lhs: Self, rhs: CGFloat) -> (Self, CGFloat) {
        return (lhs, rhs)
    }
    static
    func -(lhs: Self, rhs: CGFloat) -> (Self, CGFloat) {
        return (lhs, -rhs)
    }
}
public
extension LayoutAnchor where Self : NSLayoutYAxisAnchor {
    static
    func +(lhs: Self, rhs: CGFloat) -> (Self, CGFloat) {
        return (lhs, rhs)
    }
    static
    func -(lhs: Self, rhs: CGFloat) -> (Self, CGFloat) {
        return (lhs, -rhs)
    }
}

public
extension LayoutAnchorProperty where Anchor : LayoutAnchor {
    // MARK: -  have offset
    static
    func ==(lhs: LayoutAnchorProperty<Anchor>, rhs: (Anchor, CGFloat)) {
        lhs.equal(to: rhs.0, offsetBy: rhs.1)
    }
    static
    func >=(lhs: LayoutAnchorProperty<Anchor>, rhs: (Anchor, CGFloat)) {
        lhs.greaterThanOrEqual(to: rhs.0, offsetBy: rhs.1)
    }
    static
    func <=(lhs: LayoutAnchorProperty<Anchor>, rhs: (Anchor, CGFloat)) {
        lhs.lessThanOrEqual(to: rhs.0, offsetBy: rhs.1)
    }

    //MARK: -  without offset
    static
    func ==(lhs: LayoutAnchorProperty<Anchor>, rhs: Anchor) {
        lhs.equal(to: rhs)
    }
    static
    func >=(lhs: LayoutAnchorProperty<Anchor>, rhs: Anchor) {
        lhs.greaterThanOrEqual(to: rhs)
    }
    static
    func <=(lhs: LayoutAnchorProperty<Anchor>, rhs: Anchor) {
        lhs.lessThanOrEqual(to: rhs)
    }
}
