import SwiftUI
import UIKit

struct EmitterView: UIViewRepresentable {
    
    var colors: [UIColor]
    
    func makeUIView(context: Context) -> UIView {
        
        let host = ParticleEmitter(colors: colors)
        
        return host
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {}
    
    typealias UIViewType = UIView
}
