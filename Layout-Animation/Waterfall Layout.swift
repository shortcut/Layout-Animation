import SwiftUI

struct WaterfallLayout: Layout {
    var numberOfColumns: Int
    var spacing: CGFloat

    // Simplified initializer with default parameters
    init(numberOfColumns: Int = 2, spacing: CGFloat = 8) {
        self.numberOfColumns = max(numberOfColumns, 1)
        self.spacing = spacing
    }

    // Simplified size calculation by directly computing the width and the maximum height
    func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        let columnWidth = (proposal.width ?? 0 - spacing * CGFloat(numberOfColumns - 1)) / CGFloat(numberOfColumns)
        var columnHeights = Array(repeating: CGFloat(0), count: numberOfColumns)

        subviews.forEach { subview in
            let subviewHeight = subview.sizeThatFits(ProposedViewSize(width: columnWidth, height: nil)).height
            if let minHeightColumnIndex = columnHeights.indices.min(by: { columnHeights[$0] < columnHeights[$1] }) {
                columnHeights[minHeightColumnIndex] += subviewHeight + spacing
            }
        }

        // Adjusting column heights to remove extra spacing at the end
        columnHeights = columnHeights.map { max($0 - spacing, 0) }
        let maxHeight = columnHeights.max() ?? 0

        return CGSize(width: proposal.width ?? 0, height: maxHeight)
    }

    // Streamlined subview placement with reduced repetition
    func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
        let columnWidth = (bounds.width - spacing * CGFloat(numberOfColumns - 1)) / CGFloat(numberOfColumns)
        var columnYOffsets = Array(repeating: CGFloat(0), count: numberOfColumns)

        subviews.forEach { subview in
            let subviewHeight = subview.sizeThatFits(ProposedViewSize(width: columnWidth, height: nil)).height
            if let minHeightColumnIndex = columnYOffsets.indices.min(by: { columnYOffsets[$0] < columnYOffsets[$1] }) {
                let position = CGPoint(x: bounds.minX + CGFloat(minHeightColumnIndex) * (columnWidth + spacing), y: bounds.minY + columnYOffsets[minHeightColumnIndex])
                subview.place(at: position, anchor: .topLeading, proposal: ProposedViewSize(width: columnWidth, height: subviewHeight))
                columnYOffsets[minHeightColumnIndex] += subviewHeight + spacing
            }
        }
    }
}
