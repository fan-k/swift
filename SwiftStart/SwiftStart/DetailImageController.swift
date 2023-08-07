//
//  DetailImageController.swift
//  SwiftStart
//
//  Created by 樊康鹏 on 2023/8/7.
//

import UIKit
import AVKit

class DetailImageController: UIViewController {

    var imageName :String!
    
    var player  :AVPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        let path = Bundle.main.path(forResource: imageName, ofType: "")!
        
        
        let playerItem  = AVPlayerItem(url: NSURL(fileURLWithPath: path) as URL)
        self.player = AVPlayer.init(playerItem: playerItem)
        
        let playerLayer = AVPlayerLayer.init(player: self.player)
        playerLayer.videoGravity = .resizeAspect
        playerLayer.frame = self.view.frame

        self.view.layer .addSublayer(playerLayer)
        
        self.player.play()
        
        
        // Do any additional setup after loading the view.
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
