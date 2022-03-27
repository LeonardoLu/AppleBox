//
//  LayoutOperator+Size.swift
//  Welcome (iOS)
//
//  Created by lujunhui.2nd on 2022/3/27.
//

import UIKit

// MARK: - LayoutDimension
public
protocol LayoutDimension {
    func constraint(equalToConstant float: CGFloat) -> NSLayoutConstraint
    func constraint(greaterThanOrEqualToConstant float: CGFloat) -> NSLayoutConstraint
    func constraint(lessThanOrEqualToConstant float: CGFloat) -> NSLayoutConstraint

    func constraint(equalTo anchor: Self,
                    multiplier mul: CGFloat,
                    constant float: CGFloat) -> NSLayoutConstraint
    func constraint(greaterThanOrEqualTo anchor: Self,
                    multiplier mul: CGFloat,
                    constant float: CGFloat) -> NSLayoutConstraint
    func constraint(lessThanOrEqualTo anchor: Self,
                    multiplier mul: CGFloat,
                    constant float: CGFloat) -> NSLayoutConstraint
}

extension NSLayoutDimension: LayoutDimension {}

public
struct LayoutDimensionProperty<Anchor: LayoutDimension> {
    let anchor: Anchor
}


extension LayoutDimensionProperty {
    func equal(to constant: CGFloat = 0) {
        anchor.constraint(equalToConstant: constant).isActive = true
    }

    func greaterThanOrEqual(to constant: CGFloat = 0) {
        anchor.constraint(greaterThanOrEqualToConstant: constant).isActive = true
    }

    func lessThanOrEqual(to constant: CGFloat = 0) {
        anchor.constraint(lessThanOrEqualToConstant: constant).isActive = true
    }

    func equal(to otherAnchor: Anchor, multiplier mul: CGFloat = 1.0, constant con: CGFloat = 0.0) {
        anchor.constraint(equalTo: otherAnchor, multiplier: mul, constant: con).isActive = true
    }

    func greaterThanOrEqual(to otherAnchor: Anchor, multiplier mul: CGFloat = 1.0, constant con: CGFloat = 0.0) {
        anchor.constraint(greaterThanOrEqualTo: otherAnchor, multiplier: mul, constant: con).isActive = true
    }

    func lessThanOrEqual(to otherAnchor: Anchor, multiplier mul: CGFloat = 1.0, constant con: CGFloat = 0.0) {
        anchor.constraint(lessThanOrEqualTo: otherAnchor, multiplier: mul, constant: con).isActive = true
    }
}



public
extension LayoutDimension where Self : NSLayoutDimension {
    static
    func *(lhs: Self, rhs: CGFloat) -> (Self, CGFloat) {
        return (lhs, rhs)
    }
    static
    func /(lhs: Self, rhs: CGFloat) -> (Self, CGFloat) {
        return (lhs, 1/rhs)
    }
    static
    func +(lhs: Self, rhs: CGFloat) -> (Self, CGFloat) {
        return (lhs, rhs)
    }
    static
    func -(lhs: Self, rhs: CGFloat) -> (Self, CGFloat) {
        return (lhs, -rhs)
    }
}

//public
//extension LayoutDimension where Self : NSLayoutDimension {
//    static
//    func +(lhs: (Self, CGFloat), rhs: CGFloat) -> ((Self, CGFloat), CGFloat) {
//        return ((lhs.0, lhs.1), rhs)
//    }
//    static
//    func -(lhs: (Self, CGFloat), rhs: CGFloat) -> ((Self, CGFloat), CGFloat) {
//        return ((lhs.0, lhs.1), -rhs)
//    }
//}

public
extension LayoutDimensionProperty where Anchor : LayoutDimension {

    // MARK: - only otherAnchor
    static
    func ==(lhs: LayoutDimensionProperty<Anchor>, rhs: Anchor) {
        lhs.equal(to: rhs)
    }
    static
    func >=(lhs: LayoutDimensionProperty<Anchor>, rhs: Anchor) {
        lhs.greaterThanOrEqual(to: rhs)
    }
    static
    func <=(lhs: LayoutDimensionProperty<Anchor>, rhs: Anchor) {
        lhs.lessThanOrEqual(to: rhs)
    }

    // MARK: - otherAnchor * multiplier
    static
    func ==(lhs: LayoutDimensionProperty<Anchor>, rhs: (Anchor, CGFloat)) {
        lhs.equal(to: rhs.0, multiplier: rhs.1, constant: 0)
    }
    static
    func >=(lhs: LayoutDimensionProperty<Anchor>, rhs: (Anchor, CGFloat)) {
        lhs.greaterThanOrEqual(to: rhs.0, multiplier: rhs.1, constant: 0)
    }
    static
    func <=(lhs: LayoutDimensionProperty<Anchor>, rhs: (Anchor, CGFloat)) {
        lhs.lessThanOrEqual(to: rhs.0, multiplier: rhs.1, constant: 0)
    }


    // MARK: - otherAnchor * multiplier + constant
    static
    func ==(lhs: LayoutDimensionProperty<Anchor>, rhs: ((Anchor, CGFloat), CGFloat)) {
        lhs.equal(to: rhs.0.0, multiplier: rhs.0.1, constant: rhs.1)
    }
    static
    func >=(lhs: LayoutDimensionProperty<Anchor>, rhs: ((Anchor, CGFloat), CGFloat)) {
        lhs.greaterThanOrEqual(to: rhs.0.0, multiplier: rhs.0.1, constant: rhs.1)
    }
    static
    func <=(lhs: LayoutDimensionProperty<Anchor>, rhs: ((Anchor, CGFloat), CGFloat)) {
        lhs.lessThanOrEqual(to: rhs.0.0, multiplier: rhs.0.1, constant: rhs.1)
    }


    // MARK: - otherDimension * multiplier + constant
    static
    func ==(lhs: LayoutDimensionProperty<Anchor>,
            rhs: LayoutDimensionProperty<Anchor>) {
        lhs.equal(to: rhs.anchor)
    }
    static
    func >=(lhs: LayoutDimensionProperty<Anchor>,
            rhs: LayoutDimensionProperty<Anchor>) {
        lhs.greaterThanOrEqual(to: rhs.anchor)
    }
    static
    func <=(lhs: LayoutDimensionProperty<Anchor>,
            rhs: LayoutDimensionProperty<Anchor>) {
        lhs.lessThanOrEqual(to: rhs.anchor)
    }

    // MARK: - only constant
    static
    func ==(lhs: LayoutDimensionProperty<Anchor>, rhs: CGFloat) {
        lhs.equal(to: rhs)
    }
    static
    func >=(lhs: LayoutDimensionProperty<Anchor>, rhs: CGFloat) {
        lhs.greaterThanOrEqual(to: rhs)
    }
    static
    func <=(lhs: LayoutDimensionProperty<Anchor>, rhs: CGFloat) {
        lhs.lessThanOrEqual(to: rhs)
    }
}
