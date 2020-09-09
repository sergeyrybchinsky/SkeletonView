//
// Created by Serge Rybchinsky on 09.09.2020.
// Copyright (c) 2020 SkeletonView. All rights reserved.
//

import UIKit

/// Describes Skeleton View
public protocol SkeletonView {
	/// Called before drawing placeholders
	func prepareForSkeleton()
}

@objc extension UIView: SkeletonView {
	open func prepareForSkeleton() { }
}