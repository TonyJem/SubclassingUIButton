import UIKit

enum ButtonSurprise: Int {
    case Square = 0, Star, Circle, Cake

    func basicDescription() -> String {
//        This function returns a basic description of the enumeration.
        switch self {
        case .Square:
            return "Square"
        case .Star:
            return "Star"
        case .Circle:
            return "Circle"
        case .Cake:
            return "Cake"
        }
    }
}

extension ButtonSurprise {
    static var caseCount: Int {
        var max: Int = 0
        while let _ = self(rawValue: ++max) {}
        return max
    }
    
    static func 
    
    
}



class MysteryButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
