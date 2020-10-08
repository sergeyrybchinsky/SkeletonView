// Copyright © 2018 SkeletonView. All rights reserved.

import UIKit

public extension UITextView {
    @IBInspectable
    var lastLineFillPercent: Int {
        get { return lastLineFillingPercent }
        set { lastLineFillingPercent = min(newValue, 100) }
    }

    @IBInspectable
    var linesCornerRadius: CGFloat {
        get { return multilineCornerRadius }
        set { multilineCornerRadius = min(newValue, 10) }
    }

    @IBInspectable
    var skeletonLineSpacing: CGFloat {
        get { return multilineSpacing }
        set { multilineSpacing = min(newValue, 10) }
    }

    @IBInspectable
    var skeletonPaddingInsets: UIEdgeInsets {
        get { return paddingInsets }
        set { paddingInsets = newValue }
    }

	@IBInspectable
	var setUseLastLineFillPercentForSingleLine: Bool {
		get { return useLastLineFillPercentForSingleLine }
		set { useLastLineFillPercentForSingleLine = newValue }
	}
}

extension UITextView: ContainsMultilineText {
	var multilineTextFont: UIFont? {
		return font
	}

	var useLastLineFillPercentForSingleLine: Bool {
		get {
			let defaultValue = SkeletonAppearance.default.useLastLineFillPercentForSingleLine
			return ao_get(pkey: &MultilineAssociatedKeys.useLastLineFillPercentForSingleLine) as? Bool ?? defaultValue
		}
		set { ao_set(newValue, pkey: &MultilineAssociatedKeys.useLastLineFillPercentForSingleLine) }
	}
	
    var lastLineFillingPercent: Int {
        get {
            let defaultValue = SkeletonAppearance.default.multilineLastLineFillPercent
            return ao_get(pkey: &MultilineAssociatedKeys.lastLineFillingPercent) as? Int ?? defaultValue
        }
        set { ao_set(newValue, pkey: &MultilineAssociatedKeys.lastLineFillingPercent) }
    }

    var multilineCornerRadius: CGFloat {
        get {
            let defaultValue = SkeletonAppearance.default.multilineCornerRadius
            return ao_get(pkey: &MultilineAssociatedKeys.multilineCornerRadius) as? CGFloat ?? defaultValue
        }
        set { ao_set(newValue, pkey: &MultilineAssociatedKeys.multilineCornerRadius) }
    }

    var multilineSpacing: CGFloat {
        get { return ao_get(pkey: &MultilineAssociatedKeys.multilineSpacing) as? CGFloat ?? SkeletonAppearance.default.multilineSpacing }
        set { ao_set(newValue, pkey: &MultilineAssociatedKeys.multilineSpacing) }
    }

    var paddingInsets: UIEdgeInsets {
        get { return ao_get(pkey: &MultilineAssociatedKeys.paddingInsets) as? UIEdgeInsets ?? .zero }
        set { ao_set(newValue, pkey: &MultilineAssociatedKeys.paddingInsets) }
    }
}
