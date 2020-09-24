//  Copyright © 2017 SkeletonView. All rights reserved.

import UIKit

public extension UIView {
    @IBInspectable
    var isSkeletonable: Bool {
        get { return skeletonable }
        set { skeletonable = newValue }
    }

    @IBInspectable
    var skeletonCornerRadius: CGFloat {
        get { return skeletonableCornerRadius }
        set { skeletonableCornerRadius = newValue }
    }
    
    var isSkeletonActive: Bool {
        return status == .on || (subviewsSkeletonables.first(where: { $0.isSkeletonActive }) != nil)
    }

	var skeletonTintColor: UIColor? {
		get { return ao_get(pkey: &ViewAssociatedKeys.skeletonTintColor) as? UIColor }
		set { ao_setOptional(newValue, pkey: &ViewAssociatedKeys.skeletonTintColor) }
	}

    private var skeletonable: Bool! {
        get { return ao_get(pkey: &ViewAssociatedKeys.skeletonable) as? Bool ?? false }
        set { ao_set(newValue ?? false, pkey: &ViewAssociatedKeys.skeletonable) }
    }

    private var skeletonableCornerRadius: CGFloat! {
        get { return ao_get(pkey: &ViewAssociatedKeys.skeletonCornerRadius) as? CGFloat ?? 0.0 }
        set { ao_set(newValue ?? 0.0, pkey: &ViewAssociatedKeys.skeletonCornerRadius) }
    }
}

