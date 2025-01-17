//
//  ArtworkStore.swift
//  VirtualGallery
//
//  Created by James Wu on 2021-01-26.
//

import Foundation

class ArtworkStore: ObservableObject {
    @Published var artworks : [Artwork]
    @Published var artworksOnDisplay: [Artwork]
//    @Published var LCSArtworks: [Artwork]
//    @Published var NonLCSArtworks: [Artwork]
    
    
    
    init(artworks: [Artwork] = []) {
        
        self.artworks = testArtworksStore.list
        // Display random pics each time
        self.artworksOnDisplay = testArtworksStore.listOnDisplay.shuffled()
//        self.LCSArtworks = getLCSArtWork(artworks: artworks)
//        self.NonLCSArtworks = getNonLCSArtWork(artworks: artworks)
    }
    

    
    
}
//func getLCSArtWork(artworks: [Artwork]) -> [Artwork] {
//    var outputArray: [Artwork] = []
//    for artwork in testArtworksStore.list {
//        if artwork.LCSart == true {
//            outputArray.append(artwork)
//        }
//        
//    }
//    return outputArray
//   
//    
//}
//
//func getNonLCSArtWork(artworks: [Artwork]) -> [Artwork] {
//    var outputArray: [Artwork] = []
//    for artwork in testArtworksStore.list {
//        if artwork.LCSart == false {
//            outputArray.append(artwork)
//        }
//        
//    }
//    return outputArray
    
//}

let testStore = ArtworkStore(artworks: testArtworksStore.list)

