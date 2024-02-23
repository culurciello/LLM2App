import SwiftUI

//struct SplashScreenView: View {
//    var body: some View {
//        Image("sriracha-256") // Use your splashscreen image
//            .resizable()
//            .scaledToFit()
//            .scaleEffect(0.5) // Start at 50%
//            .animation(.easeInOut(duration: 1.0), value: 0.75) // Enlarge to 75%
//            .onAppear {
//                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) { // After 1 second...
//                    withAnimation {
//                        // Replace with a NavigationLink to MemberListView when ready
//                    }
//                }
//            }
//    }
//}

struct SplashScreenView: View {
    @State private var isActive = false // State to control NavigationLink

    var body: some View {
        NavigationView { // Add a NavigationView
            VStack { // Wrap your content in a VStack
                Image("sriracha-256")
                    .resizable()
                    .scaledToFit()
                    .scaleEffect(0.5)
                    .animation(.easeInOut(duration: 1.0), value: 0.75)

                // Add a NavigationLink
                NavigationLink(destination: MemberListView(), isActive: $isActive) {
                    EmptyView() // EmptyView makes the image clickable
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    withAnimation {
                        isActive = true // Trigger navigation after 1 second
                    }
                }
            }
        }
    }
}

#Preview {
    SplashScreenView()
}
