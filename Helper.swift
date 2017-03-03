import UIKit
import MapKit

extension UITextField {
    // Add a line at the bottom of a textfield
    func underlined(confirm: Bool){
        let border = CALayer()
        let width = CGFloat(1.5)
        if(confirm){
            border.borderColor = POSITIVE_COLOR.cgColor
        }
        else {
            border.borderColor = GRAY_BKGND_COLOR.cgColor
        }
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width:  self.frame.size.width, height: self.frame.size.height)
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
}
