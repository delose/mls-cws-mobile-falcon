@_private(sourceFile: "ContentView.swift") import MLSCWSMobile
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/eugenedelossantos/prototype/mls-cws-mobile-falcon/MLSCWSMobile/MLSCWSMobile/ContentView.swift", line: 12)
        VStack {
            Image(systemName: __designTimeString("#7489.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "globe"))
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(__designTimeString("#7489.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: "Hello, worlds!"))
        }
        .padding()
    
#sourceLocation()
    }
}

import struct MLSCWSMobile.ContentView
#Preview {
    ContentView()
}



