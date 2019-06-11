import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let routeDetailView = TDSwiftRouteDetailView(frame: CGRect(x: 0.0, y: 100.0, width: self.view.frame.width, height: 100), upperLabelText: "Pickup Location", upperAddressText: "123 One Punch Blvd, Los Angeles, CA 91000", lowerLabelText: "Dropoff Location", lowerAddressText: "100 World Way, Los Angeles, CA 91100")
        
        self.view.addSubview(routeDetailView)

    }
}
