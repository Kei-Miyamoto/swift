//
//  ScoreViewController.swift
//  swift
//
//  Created by Kei Miyamoto on 2022/05/21.
//

import UIKit

class ScoreViewController: UIViewController {
    
    @IBOutlet var scoreLabel: UILabel!
    
    var correct = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = "\(correct)問正解！"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func shareButtonAction(_ sender: Any) {
        let activityItems = ["\(correct)問正解しました！","#BAクイズ"]
        let activityVC = UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
        self.present(activityVC, animated: true)
    }
    @IBAction func toTioButtonAction(_ sender: Any) {
        self.presentingViewController?.presentingViewController?.presentingViewController?.dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
