import SwiftUI

struct IslandDetailScreen: View {
    let image: Image
    let title: String
    let description: String

    var body: some View {
        ScrollView {
            VStack {
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)

                Text(title)
                    .font(.system(.largeTitle, design: .monospaced))
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()

                Text(description)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(15)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

#Preview {
    IslandDetailScreen(image: Image("sri-lanka"),
                       title: "Sri Lanka",
                       description: "Sri Lanka, known as the Pearl of the Indian Ocean, boasts a history that stretches back thousands of years. It's a place where ancient Buddhist ruins coexist with lush tea plantations and white sandy beaches. The island's diverse landscapes are home to a wealth of wildlife, including elephants, leopards, and a variety of bird species, making it a hotspot for nature lovers and adventure seekers."


    )
}
