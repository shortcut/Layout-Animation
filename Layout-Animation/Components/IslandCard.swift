import SwiftUI

struct IslandCard: View {
    let island: Island
    @Binding var downloadedImage: Image?
    @Binding var selectedIsland: Island?

    var body: some View {
        VStack {
            AsyncImage(url: island.imageURL) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                        .frame(width: 150, height: 300)
                        .overlay {
                            ProgressView()
                        }
                        .overlay(alignment: .bottom) {
                            titleOverlay
                        }
                case .success(let image):
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .transition(.opacity)
                        .animation(.easeInOut, value: UUID())
                        .overlay(alignment: .bottom) {
                            titleOverlay
                        }
                        .onTapGesture {
                            downloadedImage = image
                            selectedIsland = island
                        }
                case .failure(let error):
                    EmptyView()
                @unknown default:
                    fatalError()
                }
            }

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
        .edgesIgnoringSafeArea(.vertical)
    }

    var titleOverlay: some View {
        Text(island.name)
            .font(.system(.title2, design: .monospaced))
            .bold()
            .frame(maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(.ultraThinMaterial)
    }
}

#Preview {
    IslandCard(island: mockIslands[0], downloadedImage: .constant(nil), selectedIsland: .constant(nil))
        .padding()
}
