import Foundation


struct Island: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let imageURLString: String

    var imageURL: URL? {
        URL(string: imageURLString)
    }
}

let mockIslands: [Island] = [
    Island(
        name: "Maui",
        description: """
        Maui, known as the Valley Isle, is renowned for its diverse landscapes and adventurous activities. From the sacred Iao Valley to the breathtaking Haleakalā National Park, visitors can explore lush rainforests and volcanic craters. The island's 30 miles of beaches offer everything from serene white-sand shores to world-class surfing and snorkeling spots.

        Historic Lahaina town provides a glimpse into Maui's whaling past with its vibrant art scene and lively Front Street. The Road to Hana, with its 620 curves and 59 bridges, offers one of the world's most scenic drives through rainforests and waterfalls.
        """,
        imageURLString: "https://images.unsplash.com/photo-1562191326-0da0767cfffe?q=80&w=3024&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    ),
    Island(
        name: "Bora Bora",
        description: """
        Bora Bora, the jewel of the South Seas, is dreamlike in its tropical splendor. Enclosed by a barrier reef and a crystal-clear lagoon, this island is famous for its overwater bungalows that provide a unique stay experience. Mount Otemanu, a dormant volcano at its center, rises majestically over the azure waters, offering hiking and breathtaking viewpoints.

        Bora Bora is also a diving paradise, where divers and snorkelers are amazed by the marine life diversity. The island's Polynesian culture is vibrant, seen in its local dances, crafts, and culinary traditions, making it a luxurious escape into paradise.
        """,
        imageURLString: "https://images.unsplash.com/photo-1580725869538-9b164c27c44f?q=80&w=3264&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    ),
    Island(
        name: "Sri Lanka",
        description: """
        Sri Lanka, known as the Pearl of the Indian Ocean, boasts a history that stretches back thousands of years. It's a place where ancient Buddhist ruins coexist with lush tea plantations and white sandy beaches. The island's diverse landscapes are home to a wealth of wildlife, including elephants, leopards, and a variety of bird species, making it a hotspot for nature lovers and adventure seekers.

        The vibrant culture of Sri Lanka is a tapestry of traditions and religions, reflected in its colorful festivals, delicious cuisine, and warm hospitality. From the cool highlands of Nuwara Eliya to the historic fort city of Galle, Sri Lanka offers an enchanting mix of experiences that blend its rich heritage with modern vibrancy.
        """,
        imageURLString: "https://images.unsplash.com/photo-1569670380685-4582bf29a24a?q=80&w=3373&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    ),
    Island(
        name: "Santorini",
        description: """
        Santorini, with its cliff-top villages and stunning sunsets, is a jewel in the Aegean Sea. This island, shaped by a devastating volcanic eruption in the 16th century BC, is renowned for its whitewashed buildings with blue domes, panoramic views of the sea, and vibrant nightlife. The spectacular caldera, fine wines, and local cuisine add to its allure, making it a must-visit destination for travelers seeking beauty and history.

        The archaeological site of Akrotiri, often compared to Pompeii, provides a fascinating glimpse into the ancient Minoan civilization. The beaches of Santorini, such as the famous Red Beach, offer unique landscapes with volcanic rocks and clear blue waters. Santorini's charm is unmatched, offering a blend of natural beauty, historical depth, and cultural richness.
        """,
        imageURLString: "https://images.unsplash.com/photo-1669203408570-4140ee21f211?q=80&w=2922&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    ),
    Island(
        name: "Fiji",
        description: """
        Fiji, an archipelago of over 300 islands in the South Pacific, is celebrated for its rugged landscapes, palm-lined beaches, and coral reefs with clear lagoons. Its major islands, Viti Levu and Vanua Levu, contain most of the population. Viti Levu is home to the capital, Suva, a port city with British colonial architecture. The Fiji Museum, in the Victorian-era Thurston Gardens, has ethnographic exhibits.

        Beyond its luxurious private islands, Fiji is known for its outdoor activities, including scuba diving, skydiving, surfing, and soft-coral diving, one of the country’s major attractions. With a culture that warmly welcomes visitors, Fiji offers a unique way to experience island life, where traditional ceremonies and community living are as enchanting as its natural beauty.
        """,
        imageURLString: "https://images.unsplash.com/photo-1511144241814-c7d501e5239c?q=80&w=3222&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    ),
    Island(
        name: "Bali",
        description: """
        Bali, Indonesia's most famous island, is located in the westernmost end of the Lesser Sunda Islands. Known for its forested volcanic mountains, iconic rice paddies, beaches, and coral reefs, the island is also renowned for its yoga and meditation retreats. The island's cultural heart is the city of Ubud, surrounded by rainforest and terraced rice paddies, dotted with Hindu temples and shrines.

        Bali's varied landscape offers a multitude of outdoor activities, from surfing on the beaches of Kuta, Seminyak, and Canggu to hiking up Mount Batur to watch the sunrise. Balinese culture is rich and vibrant, offering a deep spiritual experience, evident in its dance, music, and temple festivals. Bali is not just a destination; it's a tropical state of mind.
        """,
        imageURLString: "https://images.unsplash.com/photo-1573790387438-4da905039392?q=80&w=3250&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    ),
    Island(
        name: "Maldives",
        description: """
        The Maldives, a tropical paradise in the Indian Ocean, is composed of 26 ring-shaped atolls made up of more than 1,000 coral islands. Known for its beaches, blue lagoons, and extensive reefs, the Maldives is synonymous with luxury. Overwater bungalows stretch over turquoise waters, offering a unique lodging experience that brings you close to the rich marine life.

        The Maldives is renowned for its marine biodiversity, including vibrant coral reefs and a wide array of sea life. Diving and snorkeling in the Maldives offer encounters with manta rays, sharks, and a kaleidoscope of coral and fish. The islands offer a serene escape, with their blend of natural beauty and luxury making them a top choice for honeymooners and travelers seeking a remote island experience.
        """,
        imageURLString: "https://images.unsplash.com/photo-1514282401047-d79a71a590e8?q=80&w=2213&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    ),
    Island(
        name: "Seychelles",
        description: """
        Seychelles, an archipelago of 115 islands in the Indian Ocean, off East Africa, is renowned for its pristine beaches, coral reefs, diving spots, nature reserves, and rare wildlife such as giant Aldabra tortoises. Mahe, a hub for visiting the other islands, is home to the capital, Victoria. It also has the mountain rainforests of Morne Seychellois National Park and beaches, including Beau Vallon and Anse Takamaka.

        With some of the most beautiful beaches in the world, Seychelles is a sanctuary for the most exotic flora and fauna, including the rare Seychelles black parrot. The islands offer a luxury escape amid natural wonders, making it a sought-after destination for eco-tourists, honeymooners, and anyone wishing to discover the splendor of island life in its most untouched form.
        """,
        imageURLString: "https://images.unsplash.com/photo-1618822461310-da1be362e30c?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    ),
    Island(
        name: "Kauai",
        description: """
        Kauai, the oldest island in the Hawaiian chain, is draped in emerald valleys, sharp mountain spires, jagged cliffs, and tropical rainforests. Often called the "Garden Isle," Kauai is a haven for outdoor activities such as kayaking the Wailua River, snorkeling on Poipu Beach, hiking the trails of Kokee State Park, and exploring the Waimea Canyon, known as the "Grand Canyon of the Pacific."

        Beyond its adventure sports, Kauai offers a more intimate experience of Hawaii's diverse ecosystems and local culture. The island's laid-back atmosphere and breathtaking landscapes have made it a favorite for those seeking to experience Hawaii's beauty without the crowds. Kauai's natural wonders are a true testament to the island's ancient spirit and enduring charm.
        """,
        imageURLString: "https://images.unsplash.com/photo-1505852679233-d9fd70aff56d?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    ),
    Island(
        name: "Corsica",
        description: """
        Corsica, a mountainous Mediterranean island, presents a unique blend of stylish coastal towns, dense forests, and craggy peaks. Known as the birthplace of Napoleon Bonaparte, its diverse landscape offers everything from hiking trails through the Aiguilles de Bavella to the stunning cliffs of Bonifacio. Corsica is not just an island; it's a juxtaposition of cultural richness and natural splendor.

        The island's rugged interior is home to the GR 20, one of Europe's most renowned hiking trails, while its coastline boasts some of the most beautiful beaches in the Mediterranean. With its blend of French and Italian cultures, Corsica offers a rich tapestry of culinary delights, historical sites, and vibrant festivals, making it a captivating destination for travelers seeking both adventure and culture.
        """,
        imageURLString: "https://images.unsplash.com/photo-1545129228-886291dac46f?q=80&w=3348&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    )
]

