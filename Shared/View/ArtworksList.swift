//
//  ArtworksList.swift
//  VirtualGallery
//
//  Created by James Wu on 2021-01-28.
//

import SwiftUI
import ACarousel

struct ArtworksList: View {
    
    @State var expand = false
    
    @State private var searchText: String = ""
    
    @State private var showingSearchingView: Bool = false
    
    let store = ArtworkStore()
    
    init() {
        //navigation title colour changable 
        let navBarApperance = UINavigationBar.appearance()
        navBarApperance.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
        //        navBarApperance.titleTextAttributes = [.foregroundColor: UIColor.yellow]
    }
    var body: some View {
        
        ScrollView{
            
            //            SearchBarView(text: $searchText)
            //                .padding(.top)

            Text("Everything You need to Know About Art").bold().foregroundColor(.black).font(.system(.largeTitle, design: .serif)).padding(.horizontal).multilineTextAlignment(.leading)

                
            
            Spacer()
            

            ACarousel(store.artworksOnDisplay,
                          spacing: 10,
                          headspace: 10,
                          sidesScaling: 0.7,
                          isWrap: true,
                          autoScroll: .active(4)) { item in
                    VStack {
                        NavigationLink(destination: ArtworkDetail(artwork: item)){
                            Image(item.name)
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(30)
                        }
                        Text(item.name).font(.system(.title2, design: .serif))
                        Text(item.artist).font(.system(.title3, design: .serif))
                    }
                }
                .frame(height: 600)
                .shadow(radius: 20)
                Spacer()

            
            VStack(alignment: .leading,spacing:5, content: {
                
                HStack {
                    Text("Knowledge Base")
                        .font(.system(.title, design: .serif))
                    Spacer()
                    Image(systemName: expand ? "chevron.up": "chevron.down").resizable().frame(width: 13, height: 6)
                    
                }.onTapGesture {
                    self.expand.toggle()
                    
                }.frame(width: 310, height: 50, alignment: .center)

                if expand {
                        
                        VStack{
                            
                            Group {
                                NavigationLink(destination: PurposeOfArt())
                                {
                                    HStack{
                                        Image("Purpose of Art")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 44, height:44)
                                            .cornerRadius(15)
                                
                                            Text("Purpose of Art")
                                        Spacer()
                                        Image(systemName: "chevron.right").resizable().frame(width: 6, height: 13).padding()
                                    }.frame(width: 315, height: 50, alignment: .center)
                                }
                                Divider().frame(width: 300)
                            }
                
                            Group {
                                NavigationLink(destination: ElementsOfArt())
                                {
                                    HStack{
                                        Image("Elements of Art")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 44, height:44)
                                            .cornerRadius(15)
                                
                                            Text("Elements of Art")
                                        Spacer()
                                        Image(systemName: "chevron.right").resizable().frame(width: 6, height: 13).padding()
                                    }.frame(width: 310, height: 50, alignment: .center)
                                }
                                
                                Divider().frame(width: 300)
                            }
                           
                            Group {
                                NavigationLink(destination: PrinciplesOfDesign())
                                {
                                    HStack{
                                        Image("Principles of Design")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 44, height:44)
                                            .cornerRadius(15)
                                
                                            Text("Principles of Design")
                                        Spacer()
                                        Image(systemName: "chevron.right").resizable().frame(width: 6, height: 13).padding()
                                    }.frame(width: 310, height: 50, alignment: .center)
                                }
                                
                                Divider().frame(width: 300)
                            }
                           
                            Group {
                                NavigationLink(destination: PostModernPrinciples())
                                {
                                    HStack{
                                        Image("Postmodern Principles")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 44, height:44)
                                            .cornerRadius(15)
                                
                                            Text("Postmodern Principles")
                                        Spacer()
                                        Image(systemName: "chevron.right").resizable().frame(width: 6, height: 13).padding()
                                    }.frame(width: 310, height: 50, alignment: .center)
                                }
                                
                                Divider().frame(width: 300)
                            }
                            
                            Group {
                                NavigationLink(destination: CreativeProcess())
                                {
                                    HStack{
                                        Image("Creative Process")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 44, height:44)
                                            .cornerRadius(15)
                                
                                            Text("Creative Process")
                                        Spacer()
                                        Image(systemName: "chevron.right").resizable().frame(width: 6, height: 13).padding()
                                    }.frame(width: 310, height: 50, alignment: .center)
                                }
                                
                                Divider().frame(width: 300)
                            }
                            
                            Group {
                                NavigationLink(destination: Surrealism())
                                {
                                    HStack{
                                        Image("Surrealism")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 44, height:44)
                                            .cornerRadius(15)
                                
                                            Text("Surrealism")
                                        Spacer()
                                        Image(systemName: "chevron.right").resizable().frame(width: 6, height: 13).padding()
                                    }.frame(width: 310, height: 50, alignment: .center)
                                }
                                
                                Divider().frame(width: 300)
                            }
                            
                            Group {
                                NavigationLink(destination: CriticalAnalysisProcess())
                                {
                                    HStack{
                                        Image("Critical Analysis Process")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 44, height:44)
                                            .cornerRadius(15)
                                
                                            Text("Critical Analysis Process")
                                        Spacer()
                                        Image(systemName: "chevron.right").resizable().frame(width: 6, height: 13).padding()
                                    }.frame(width: 310, height: 50, alignment: .center)
                                }
                                
                                Divider().frame(width: 300)
                            }
                           
                            Group {
                                NavigationLink(destination: GroupOfSeven())
                                {
                                    HStack{
                                        Image("The Group of Seven")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 44, height:44)
                                            .cornerRadius(15)
                                
                                            Text("The Group of Seven")
                                        Spacer()
                                        Image(systemName: "chevron.right").resizable().frame(width: 6, height: 13).padding()
                                    }.frame(width: 310, height: 50, alignment: .center)
                                }
                            }
                            
                            
                        }.ignoresSafeArea(edges: .all)
                        .foregroundColor(.black)
                        
                    
                }
                
            })
            .frame(width: 320, alignment: .center)
            .scaledToFit()
            .padding(.bottom)
            .cornerRadius(20)
            .animation(.spring())
            .shadow(radius: 20)
            
            Divider().frame(width: 300)
           
            NavigationLink(destination: ArtHistoryView()){
                VStack(alignment: .leading,spacing:5, content: {
                    //spacing: space occupied by each artwork
                    HStack {
                        Text("A Brief Art History")
                            .foregroundColor(.black)
                            .font(.system(.title, design: .serif))
                        Spacer()
                        Image(systemName: "chevron.right").resizable().frame(width: 6, height: 13).foregroundColor(.black)
                    }.frame(width: 310, height: 50, alignment: .center)
                })
            }
            
           
            //        }
            .frame(width: 320, alignment: .center)
            .padding(7)
//            .background(LinearGradient(gradient: .init(colors: [.gray, .white]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(20)
            .animation(.spring())
            .shadow(radius: 20)
            
        }.toolbar {
            
            ToolbarItem(placement: .primaryAction) {
                    
                Image(systemName: "magnifyingglass.circle").resizable().scaledToFill().frame(width: 30)
                        
                .onTapGesture {
                    showingSearchingView = true
                }
                
            }
            
            
        }.sheet(isPresented: $showingSearchingView) {
            SearchView(searchText: searchText, showing: $showingSearchingView)
        }

        //                            .background(Image("AppBackground"))
        //        }
        
    }
}



//func filterArtworks(searchText: String, list artworkStore: [Artwork]) -> [Artwork] {
//    
//    if searchText.isEmpty {
//        return artworkStore
//    }
//    var presentArtworks: [Artwork] = []
//    for artwork in artworkStore {
//        if artwork.name.lowercased().contains(searchText.lowercased()) || artwork.artist.lowercased().contains(searchText.lowercased()) {
//            
//            presentArtworks.append(artwork)
//        }
//    }
//    return presentArtworks
//}


struct ArtworksList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ArtworksList()
        }
    }
}

