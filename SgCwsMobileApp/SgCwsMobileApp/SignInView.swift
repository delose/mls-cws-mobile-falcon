import SwiftUI

struct SignInView: View {
    @Binding var showSignInView: Bool
    @Binding var showDashboardView: Bool
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            // Sign in title
            Text("Sign in")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 40)
            
            // Instructions
            Text("Sign in to CWS using the same login account details across all Manulife applications. If you do not have an account, click the 'Create a new account' button below.")
                .font(.body)
                .padding(.horizontal)
                .padding(.top, 10)
            
            // Email and Password fields
            VStack(alignment: .leading, spacing: 20) {
                TextField("Email", text: $username)
                    .padding()
                    .border(Color.gray)
                    .cornerRadius(5.0)
                
                SecureField("Password", text: $password)
                    .padding()
                    .border(Color.gray)
                    .cornerRadius(5.0)
            }
            .padding(.horizontal)
            .padding(.top, 20)
            
            // Sign in button
            Button(action: {
                showDashboardView = true // Switch to DashboardView
                showSignInView = false // Hide SignInView
            }) {
                Text("Sign in")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color(red: 0.23, green: 0.25, blue: 0.33)) // Dark gray color from image
                    .cornerRadius(5.0)
            }
            .padding(.horizontal)
            .padding(.top, 20)
            
            // Sign in with Face ID button
            Button(action: {
                showSignInView = false // Switch back to ContentView
            }) {
                HStack {
                    Image(systemName: "faceid")
                    Text("Sign in with Face ID")
                }
                    .font(.headline)
                    .foregroundColor(Color(red: 0.23, green: 0.25, blue: 0.33)) // Dark gray color from image
                    .padding()
                    .frame(maxWidth: .infinity)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5.0)
                            .stroke(Color(red: 0.23, green: 0.25, blue: 0.33), lineWidth: 1)
                    )
                }
                .padding(.horizontal)
                .padding(.top, 10)
                
                // Links
                VStack(spacing: 10) {
                    Button(action: {
                        // Handle forgot ID action
                    }) {
                        Text("Forgot your Manulife ID?")
                            .foregroundColor(Color(red: 0.23, green: 0.25, blue: 0.33)) // Dark gray color from image
                    }
                    Button(action: {
                        // Handle forgot password action
                    }) {
                        Text("Forgot password?")
                            .foregroundColor(Color(red: 0.23, green: 0.25, blue: 0.33)) // Dark gray color from image
                    }
                    Button(action: {
                        // Handle need help action
                    }) {
                        Text("Need help?")
                            .foregroundColor(Color(red: 0.23, green: 0.25, blue: 0.33)) // Dark gray color from image
                    }
                }
                .padding(.top, 10)
                
                // Divider with "or"
                HStack {
                    VStack { Divider() }
                    Text("or")
                    VStack { Divider() }
                }
                .padding(.horizontal)
                .padding(.top, 10)
                
                // Create a new account button
                Button(action: {
                    // Handle create account action
                }) {
                    Text("Create a new account")
                        .font(.headline)
                        .foregroundColor(Color(red: 0.23, green: 0.25, blue: 0.33)) // Dark gray color from image
                        .padding()
                        .frame(maxWidth: .infinity)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5.0)
                                .stroke(Color(red: 0.23, green: 0.25, blue: 0.33), lineWidth: 1)
                        )
                }
                .padding(.horizontal)
                .padding(.top, 10)
                
                Spacer()
            }
            .navigationTitle("Sign In")
//            .navigationBarTitleDisplayMode(.inline)
//            .navigationBarItems(leading: Button(action: {
//                showSignInView = false
//            }) {
//                Text("Back")
//            })
        }
    }
    
    struct SignInView_Previews: PreviewProvider {
        static var previews: some View {
            SignInView(showSignInView: .constant(true), showDashboardView: .constant(false))
        }
    }
