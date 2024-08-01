//
//  DashboardView.swift
//  SgCwsMobileApp
//
//  Created by Eugene De Los Santos on 1/8/24.
//
import SwiftUI

struct DashboardView: View {
    var body: some View {
        VStack {
            // Navigation bar with AIA logo and user name
            HStack {
                Text("Manulife Singapore")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
                Text("EUGENE SANTOS")
                    .font(.headline)
            }
            .padding()

            // Main content
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    // Header
                    Text("Legacies Forged With Wealthbeing by Manulife")
                        .font(.headline)
                    Image(systemName: "person.crop.rectangle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity, maxHeight: 150)
                    
                    // Action buttons
                    HStack {
                        DashboardButton(imageName: "doc.text.fill", label: "Submit claim")
                        DashboardButton(imageName: "doc.text.magnifyingglass", label: "Pre-authorise claim")
                        DashboardButton(imageName: "wrench.and.screwdriver", label: "Service request")
                        DashboardButton(imageName: "stethoscope", label: "Find a specialist")
                        DashboardButton(imageName: "video", label: "Teleconsult")
                    }
                    
                    // Portfolio
                    Text("Portfolio")
                        .font(.title)
                        .padding(.top)
                    DashboardSection(items: [
                        ("heart", "Investment"),
                        ("heart", "Death"),
                        ("cross", "TPD"),
                        ("cross", "Critical Illness"),
                        ("cross", "Accidental Death"),
                        ("cross", "Accidental Reimb."),
                        ("umbrella", "Lifestyle"),
                        ("banknote", "Savings")
                    ])
                    
                    // Health360
                    Text("Health360")
                        .font(.title)
                        .padding(.top)
                    DashboardSection(items: [
                        ("person.3.fill", "Join Vitality"),
                        ("rectangle.and.pencil.and.ellipsis", "Health screening recommendation quiz")
                    ])
                }
                .padding()
            }
            
            Spacer()
            
            // Bottom Navigation
            HStack {
                NavigationButton(imageName: "house", label: "Home")
                Spacer()
                NavigationButton(imageName: "doc.text", label: "Portfolio")
                Spacer()
                NavigationButton(imageName: "heart", label: "Health360")
                Spacer()
                NavigationButton(imageName: "gift", label: "Rewards")
                Spacer()
                NavigationButton(imageName: "ellipsis", label: "More")
            }
            .padding([.leading, .trailing, .bottom])
        }
    }
}

struct DashboardButton: View {
    let imageName: String
    let label: String
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .resizable()
                .frame(width: 40, height: 40)
            Text(label)
                .font(.footnote)
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity)
    }
}

struct DashboardSection: View {
    let items: [(String, String)]
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(items, id: \.1) { item in
                HStack {
                    Image(systemName: item.0)
                    Text(item.1)
                    Spacer()
                }
                .padding(.vertical, 5)
            }
        }
        .padding(.horizontal)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
