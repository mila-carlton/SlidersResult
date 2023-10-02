

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var coloringView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coloringView.layer.cornerRadius = 10
        setupLabel()
        
    }
    
    @IBAction func redSliderPressed(_ sender: UISlider) {
        switch sender {
        case redSlider:
            redLabel.text = redSlider.value.formatted()
            setupLabel()
            coloringView.backgroundColor = UIColor(red: 64/99, green: 23/255, blue: 18/80, alpha: CGFloat(redSlider.value))
        case greenSlider:
            greenLabel.text = greenSlider.value.formatted()
            setupLabel()
            coloringView.backgroundColor = UIColor(red: 64/215, green: 65/198, blue: 118/230, alpha: CGFloat(greenSlider.value))
        default :
            blueLabel.text = blueSlider.value.formatted()
            setupLabel()
            coloringView.backgroundColor = UIColor(red: 126/260, green: 124/280, blue: 54/170, alpha: CGFloat(blueSlider.value))
        }
        
    }
    
    private func setupLabel() {
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
    }
    
}

