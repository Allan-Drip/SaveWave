//
//  Home.swift
//  Save_Wave
//
//  Created by User on 08/12/23.
//

import Foundation
import SwiftUI

struct Home: View {
    @Namespace var animation
    @State private var currentItem: Today?
    @State private var showDetailPage: Bool = false
    @State private var animationView: Bool = false
    @State private var animatedContent: Bool = false
    @State private var scrol10ffset: CGFloat = 0
    @State private var currentDate = Date()
    @State private var contador: [String: Int] = [:]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ZStack(alignment: .top){
                Image("1")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 300)
                    .clipped()
                    .offset(y: scrol10ffset)
                    .animation(.default)
            }.offset(x: -1, y: -58)
            VStack(spacing: 0) {
                HStack(alignment: .bottom) {
                }
                .padding(.horizontal)
                .padding(.bottom)
                .opacity(showDetailPage ? 0 : 1)
                
                ForEach(todayItens) { item in
                    Button {
                        withAnimation(.interactiveSpring(response: 0.6,
                                                         dampingFraction: 0.7, blendDuration: 0.7)) {
                            currentItem = item
                            showDetailPage = true
                            if contador[item.id] == nil {
                                contador[item.id] = 200
                            }
                        }
                    } label: {
                        CardView(item: item)
                            .scaleEffect(currentItem?.id == item.id && showDetailPage ? 1 : 0.93)
                    }
                    .buttonStyle(scaledButton())
                    .opacity(showDetailPage ? (currentItem?.id == item.id ? 1 : 0) : 1)
                    .offset(y: -scrol10ffset - 80)
                }
            }
            .padding(.vertical)
        }
        
        .overlay {
            if let currentItem = currentItem, showDetailPage {
                DetailView(item: currentItem)
                    .ignoresSafeArea(.container, edges: .top)
            }
        }
    }
    @ViewBuilder
    func CardView(item: Today) -> some View {
        VStack(alignment: .leading, spacing: 15) {
            ZStack(alignment: .topLeading) {
                GeometryReader { proxy in
                    let size = proxy.size
                    Image(item.artLogo)
                        .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: size.width, height: size.height)
                                            .cornerRadius(25)
                }
                .frame(height: 190)
                LinearGradient(colors: [
                    .black.opacity(0),
                    .black.opacity(0),
                    .clear
                ], startPoint: .top, endPoint: .bottom)
                VStack(alignment: .leading, spacing: 8) {
                    Text(item.logoTitle)
                        .font(.largeTitle.bold())
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                }
                .foregroundColor(.primary)
                .padding()
                .offset(y: currentItem?.id == item.id && animationView ? safeArea().top : 0)
            }
            HStack(spacing: 12) {
                VStack(alignment: .leading, spacing: 4) {
                    Text(item.appName)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text(item.appDescricao)
                        .font(.system(size: 18))
                        .foregroundColor(.white)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding([.horizontal, .bottom])
        }
        .background {
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(Color.gray)
        }
        .matchedGeometryEffect(id: item.id, in: animation)
        .padding([.horizontal, . bottom])
    }

    func DetailView(item: Today) -> some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                CardView(item: item)
                VStack(spacing: 30) {
                    Text(item.postText)
                        .multilineTextAlignment(.leading)
                        .lineSpacing(10)
                        .padding(.bottom, 10)
                    item.extendedContent()
                    
                    Divider()
                }
                .padding()
                .offset(y: scrol10ffset > 0 ? scrol10ffset : 0)
                .opacity(animatedContent ? 1 : 0)
                .scaleEffect(animationView ? 1 : 0, anchor: .top)
            }
            .offset(y: scrol10ffset > 0 ? -scrol10ffset : 0)
            .offset(offset: $scrol10ffset)
        }
        .overlay(alignment: .topTrailing, content: {
            Button {
                withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7)) {
                    animationView = false
                    animatedContent = false
                }
                withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7).delay(0.05)) {
                    currentItem = nil
                    showDetailPage = false
                }
            } label: {
                Image(systemName: "xmark.circle.fill")
                    .font(.title)
                    .foregroundColor(.white)
            }
            .padding()
            .padding(.top, safeArea().top)
            .offset(y: -10)
            .opacity(animationView ? 1 : 0)
        })
        .onAppear {
            withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7)) {
                animationView = true
            }
            withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7).delay(0.1)) {
                animatedContent = true
            }
        }
        .transition(.identity)
    }
}



struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct scaledButton: ButtonStyle{
    func makeBody (configuration: Configuration) -> some View {
            configuration.label
                .scaleEffect(configuration.isPressed ? 0.94 : 1)
                .animation (.easeInOut, value: configuration.isPressed)
        }
    }

extension View{
    func safeArea()->UIEdgeInsets {
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else{
            return.zero
        }
        guard let safeArea = screen.windows.first?.safeAreaInsets else{
            return.zero
        }
        return safeArea
    }
    func offset(offset: Binding<CGFloat>)->some View{
        return self
            .overlay{
                GeometryReader{proxy in
                    let minY = proxy.frame (in: .named( "SCROLL")).minY
                    Color.clear
                        .preference (key: offsetKey.self, value: minY)
                }
                .onPreferenceChange(offsetKey.self){ value in
                    offset.wrappedValue = value
                }
            }
    }
}

struct offsetKey: PreferenceKey{
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat){
        value = nextValue()
    }
}

