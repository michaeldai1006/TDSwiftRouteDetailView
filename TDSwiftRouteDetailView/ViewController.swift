import UIKit

class ViewController: UIViewController, TDSwiftRouteDetailViewDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Detail view instance
        let routeDetailView = TDSwiftRouteDetailView(frame: CGRect(x: 0.0, y: 100.0, width: self.view.frame.width, height: 100), upperLabelText: "Pickup Location", upperAddressText: "123 One Punch Blvd, Los Angeles, CA 91000", lowerLabelText: "Dropoff Location", lowerAddressText: "100 World Way, Los Angeles, CA 91100")
        routeDetailView.delegate = self
        
        // Add detail view as subview
        self.view.addSubview(routeDetailView)
    }
    
    func didSelectAddressBtn(atLocation location: TDSwiftRouteDetailViewAddressButtonLocation, button: UIButton) {
        print("Location: \(location)")
        print("Button text: \(String(describing: button.titleLabel?.text))")
    }
}
