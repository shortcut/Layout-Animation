import SwiftUI

struct ContentView: View {
    @State private var selectedImage: Image? = nil
    @State private var showDetail = false
    @State private var selectedIsland: Island? = nil
    
    var body: some View {
        ScrollView {
            WaterfallLayout(numberOfColumns: 2) {
                ForEach(mockIslands) { island in
                    IslandCard(island: island, downloadedImage: $selectedImage, selectedIsland: $selectedIsland)
                        .frame(maxWidth: 200)
                }
            }
            .padding()
        }
        .sheet(isPresented: $showDetail, onDismiss: { selectedImage = nil; selectedIsland = nil  }, content: {
            if let selectedImage, let selectedIsland {
                IslandDetailScreen(image: selectedImage, title: selectedIsland.name, description: selectedIsland.description)
            }
        })
        .onChange(of: selectedImage) { oldValue, newValue in
            if newValue != nil {
                showDetail = true
            }
        }
    }
}

#Preview {
    ContentView()
}
