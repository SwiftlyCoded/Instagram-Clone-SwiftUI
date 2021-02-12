//
//  ContentView.swift
//  instaClone
//
//  Created by Alex on 12/02/2021.
//

import SwiftUI

let screenWidth = UIScreen.main.bounds.width

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Header()
                
                ViewDashboard()
                
                ProfileStats()
                
                ProfileInfo()
                
                Buttons()
                
                Switch()
                
                PictureGrid()
                
                Spacer()
                
                Menu()
            }
        }.foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Header: View{
    var body: some View{
        HStack{
            Text("swiftlycoded")
                .font(.system(size: 22, weight: .bold))
            
            Image(systemName: "chevron.down")
            
            Spacer()
            
            HStack(spacing: 20){
                Image(systemName: "plus")
                
                Image(systemName: "line.horizontal.3")
            }
            .font(.system(size: 25))
        }
        .padding(.horizontal)
        .padding(.top, 10)
    }
}

struct ViewDashboard: View{
    var body: some View{
        VStack(spacing: 0){
            
            Rectangle()
                .frame(width: screenWidth, height: 0.3)
                .foregroundColor(.gray)
                .opacity(0.3)
            
            Text("View professional dashboard")
                .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5874708891, blue: 0.9736507535, alpha: 1)))
                .font(.system(size: 12, weight: .bold))
                .padding(.vertical, 10)
            
            Rectangle()
                .frame(width: screenWidth, height: 0.6)
                .foregroundColor(.gray)
                .opacity(0.3)
        }
    }
}

struct ProfileStats: View{
    var body: some View{
        HStack{
            ZStack(alignment: .bottomTrailing){
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                ZStack{
                    Circle()
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5874708891, blue: 0.9736507535, alpha: 1)))
                    
                    Image(systemName: "plus")
                        .font(.system(size: 14, weight: .bold))
                }
                .overlay(Circle().stroke(Color.black, lineWidth: 1))
                .offset(x: -12, y: -12)
            }
            
            Spacer()
            
            HStack(spacing: 28){
                VStack{
                    Text("4")
                        .font(.system(size: 16, weight: .bold))
                    Text("Posts")
                        .font(.system(size: 14))
                }
                
                VStack{
                    Text("0")
                        .font(.system(size: 16, weight: .bold))
                    Text("Followers")
                        .font(.system(size: 14))
                }
                
                VStack{
                    Text("8")
                        .font(.system(size: 16, weight: .bold))
                    Text("Following")
                        .font(.system(size: 14))
                }
            }
        }
        .padding(.horizontal)
    }
}

struct ProfileInfo: View{
    var body: some View{
        VStack(alignment: .leading, spacing: 5){
            Text("Swiftly coded")
                .font(.system(size: 13, weight: .bold))
            
            Text("Video Creator")
                .foregroundColor(Color(#colorLiteral(red: 0.4705343246, green: 0.4706193209, blue: 0.4705289602, alpha: 1)))
            
            Text("Swiftly coded is an educational channel on YouTube mainly focused on iOS development.")
            
            Text("youtube.com/channel/UCdG2dOtLa6Yj3NKT8NNewfA")
        }
        
        .font(.system(size: 12))
        .padding(.horizontal)
    }
}

struct Buttons: View{
    var body: some View{
        HStack{
            Text("Edit Profile")
                .frame(width: 110, height: 35)
                .cornerRadius(5)
                .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.white, lineWidth: 1.5).opacity(0.2))
            
            Text("Promotions")
                .frame(width: 110, height: 35)
                .cornerRadius(5)
                .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.white, lineWidth: 1.5).opacity(0.2))
            
            Text("Insights")
                .frame(width: 110, height: 35)
                .cornerRadius(5)
                .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.white, lineWidth: 1.5).opacity(0.2))
        }
        .font(.system(size: 12, weight: .bold))
        .padding(.top)
        .padding(.horizontal)
    }
}

struct Switch: View{
    var body: some View{
        HStack{
            Spacer()
            Image(systemName: "circle.grid.3x3")
            Spacer()
            Image(systemName: "person.crop.square")
            Spacer()
        }
        .frame(width: screenWidth - 10)
        .font(.system(size: 25))
        .padding(.top)
    }
}

struct PictureGrid: View{
    
    private var columns: [GridItem] = [
        GridItem(.fixed(screenWidth / 3), spacing: 0),
        GridItem(.fixed(screenWidth / 3), spacing: 0),
        GridItem(.fixed(screenWidth / 3), spacing: 0)
    ]
    
    var body: some View{
        ScrollView{
            LazyVGrid(columns: columns){
                ForEach(1...4, id: \.self){ i in
                    Image("post\(i)")
                        .resizable()
                        .frame(height: 130)
                }
            }
        }
    }
}

struct Menu: View{
    var body: some View{
        VStack(spacing: 10){
            Rectangle()
                .frame(width: screenWidth, height: 0.2)
                .foregroundColor(.gray)
                .opacity(0.3)
            
            HStack(spacing: 45){
                Image(systemName: "house")
                
                Image(systemName: "magnifyingglass")
                
                Image(systemName: "play.rectangle")
                
                Image(systemName: "bag")
                
                Image(systemName: "person.circle.fill")
            }
            .font(.system(size: 22))
        }
    }
}
