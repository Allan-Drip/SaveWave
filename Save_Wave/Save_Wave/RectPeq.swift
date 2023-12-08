import Foundation
import SwiftUI

struct RectPeq: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("corteste"))
                
                .cornerRadius(10)
        }
    }
}

#Preview {
    RectPeq()
}
