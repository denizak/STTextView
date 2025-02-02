//  Created by Marcin Krzyzanowski
//  https://github.com/krzyzanowskim/STTextView/blob/main/LICENSE.md

import Cocoa

/// Custom rendering attributes
final class DecorationView: NSView {
    weak var textLayoutManager: NSTextLayoutManager?

    init(textLayoutManager: NSTextLayoutManager) {
        self.textLayoutManager = textLayoutManager
        super.init(frame: .zero)
        wantsLayer = true
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override var isFlipped: Bool {
#if os(macOS)
        true
#else
        false
#endif
    }

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
    }
}
//
//private extension NSUnderlineStyle {
//
//    /// Dots that NSTextView uses, that is not available otherwise as public API.
//    static var patternLargeDot: NSUnderlineStyle {
//        NSUnderlineStyle(rawValue: 0x11)
//    }
//}
