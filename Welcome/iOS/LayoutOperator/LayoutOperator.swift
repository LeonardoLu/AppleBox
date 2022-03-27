//
//  LayoutOperator.swift
//  Welcome (iOS)
//
//  Created by lujunhui.2nd on 2022/3/27.
//

import UIKit

// MARK: - LayoutProxy
public
class LayoutProxy {
    public
    lazy var leading = anchorProperty(with: view.leadingAnchor)
    public
    lazy var trailing = anchorProperty(with: view.trailingAnchor)
    public
    lazy var top = anchorProperty(with: view.topAnchor)
    public
    lazy var bottom = anchorProperty(with: view.bottomAnchor)
    public
    lazy var centerX = anchorProperty(with: view.centerXAnchor)
    public
    lazy var centerY = anchorProperty(with: view.centerYAnchor)
    public
    lazy var width = dimensionProperty(with: view.widthAnchor)
    public
    lazy var height = dimensionProperty(with: view.heightAnchor)

    private let view: UIView
    public
    var superview: UIView {
        assert(view.superview != nil, "need superview!!!")
        return view.superview!
    }

    fileprivate init(view: UIView) {
        self.view = view
    }

    private func anchorProperty<A: LayoutAnchor>(with anchor: A) -> LayoutAnchorProperty<A> {
        return LayoutAnchorProperty(anchor: anchor)
    }
    private func dimensionProperty<B: LayoutDimension>(with anchor: B) -> LayoutDimensionProperty<B> {
        return LayoutDimensionProperty(anchor: anchor)
    }
}


public
protocol LayoutAnchors {
    var leading: NSLayoutXAxisAnchor { get }
    var trailing: NSLayoutXAxisAnchor { get }
    var top: NSLayoutYAxisAnchor { get }
    var bottom: NSLayoutYAxisAnchor { get }
    var centerX: NSLayoutXAxisAnchor { get }
    var centerY: NSLayoutYAxisAnchor { get }
    var width: NSLayoutDimension { get }
    var height: NSLayoutDimension { get }
}

public
protocol LayoutOperator {
    func layout(using closure: (LayoutProxy) -> Void)
    func removeAllConstraintsInSuperView()
    func removeAllConstraints()
}

public
extension LayoutOperator {
    func layout(using closure: (LayoutProxy) -> Void) {
        guard let v = self as? UIView else { return }
        v.translatesAutoresizingMaskIntoConstraints = false
        closure(LayoutProxy(view: v))
    }
    func removeAllConstraintsInSuperView() {
        guard let v = self as? UIView else { return }
        let constraints = v.superview?
            .constraints
            .filter { $0.firstItem as? UIView  == v } ?? []
        v.superview?.removeConstraints(constraints)
    }
    func removeAllConstraints() {
        guard let v = self as? UIView else { return }
        let myConstraints = v.constraints.filter { $0.firstItem as? UIView == v}
        v.removeConstraints(myConstraints)
    }
}

extension UIView: LayoutAnchors, LayoutOperator {
    public var leading: NSLayoutXAxisAnchor {
        return self.leadingAnchor
    }
    public var trailing: NSLayoutXAxisAnchor {
        return self.trailingAnchor
    }
    public var top: NSLayoutYAxisAnchor {
        return self.topAnchor
    }
    public var bottom: NSLayoutYAxisAnchor {
        return self.bottomAnchor
    }
    public var centerX: NSLayoutXAxisAnchor {
        return self.centerXAnchor
    }
    public var centerY: NSLayoutYAxisAnchor {
        return self.centerYAnchor
    }
    public var width: NSLayoutDimension {
        return self.widthAnchor
    }
    public var height: NSLayoutDimension {
        return self.heightAnchor
    }
}


extension UILayoutGuide: LayoutAnchors {
    public var leading: NSLayoutXAxisAnchor {
        return self.leadingAnchor
    }
    public var trailing: NSLayoutXAxisAnchor {
        return self.trailingAnchor
    }
    public var top: NSLayoutYAxisAnchor {
        return self.topAnchor
    }
    public var bottom: NSLayoutYAxisAnchor {
        return self.bottomAnchor
    }
    public var centerX: NSLayoutXAxisAnchor {
        return self.centerXAnchor
    }
    public var centerY: NSLayoutYAxisAnchor {
        return self.centerYAnchor
    }
    public var width: NSLayoutDimension {
        return self.widthAnchor
    }
    public var height: NSLayoutDimension {
        return self.heightAnchor
    }
}
