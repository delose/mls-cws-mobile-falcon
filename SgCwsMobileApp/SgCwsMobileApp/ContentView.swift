import SwiftUI

struct ContentView: View {
    @State private var showSignInView = false
    @State private var showDashboardView = false

    var body: some View {
        Group {
            if showSignInView {
                SignInView(showSignInView: $showSignInView, showDashboardView: $showDashboardView)
            } else if showDashboardView {
                DashboardView()
            } else {
                VStack {
                    Spacer()
                    
                    // Maintenance Alert
                    VStack {
                        Text("Scheduled Maintenance & Life Events updates")
                            .font(.headline)
                            .padding(.top)
                        Text("We are currently experiencing issues with Life Events and some features may not be available. Please try again later.")
                            .font(.subheadline)
                            .padding([.leading, .trailing, .bottom])
                    }
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    .padding()
                    
                    Spacer()
                    
                    // Greeting
                    Text("Good morning,")
                        .font(.title)
                    Text("EUGENE SANTOS")
                        .font(.title2)
                        .padding(.bottom, 20)
                    
                    Spacer()
                    
                    // Not you link
                    Button(action: {
                        showSignInView = true
                    }) {
                        VStack {
                            Image(systemName: "faceid")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .padding()
                            Text("Not you")
                                .foregroundColor(.blue)
                        }
                        .padding(.bottom, 50)
                    }
                    
                    Spacer()
                    
                    // Footer Links
                    HStack {
                        Text("Terms of use")
                        Spacer()
                        Text("Security Advisory")
                    }
                    .font(.footnote)
                    .padding([.leading, .trailing])
                    
                    Text("App Version 2.0.0")
                        .font(.footnote)
                        .padding(.bottom, 20)
                    
                    Spacer()
                    
                    // Bottom Navigation
                    HStack {
                        NavigationButton(imageName: "house", label: "Home")
                        Spacer()
                        NavigationButton(imageName: "cart", label: "Buy")
                        Spacer()
                        NavigationButton(imageName: "book", label: "Knowledge")
                        Spacer()
                        NavigationButton(imageName: "gift", label: "Rewards")
                        Spacer()
                        NavigationButton(imageName: "ellipsis", label: "More")
                    }
                    .padding([.leading, .trailing, .bottom])
                }
            }
        }
    }
}

struct NavigationButton: View {
    let imageName: String
    let label: String
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .resizable()
                .frame(width: 30, height: 30)
            Text(label)
                .font(.footnote)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
