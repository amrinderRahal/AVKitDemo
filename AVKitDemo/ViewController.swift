//
//  ViewController.swift
//  AVKitDemo
//
//  Created by Amandeep Singh on 11/06/19.
//  Copyright © 2019 Amandeep Singh. All rights reserved.
//

import UIKit
import AVKit
class ViewController: UIViewController {

    var player = AVPlayer()
    var videoController = AVPlayerViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnPlay(_ sender: Any) {
        let path = Bundle.main.path(forResource: "video", ofType: "mp4")
        let pathUrl = URL(fileURLWithPath: path!)
            player = AVPlayer(url: pathUrl)
            videoController.player = player
            player.play()
            present(videoController, animated: true, completion: nil)
    }
    
    @IBAction func btnLoadServerVideo(_ sender: Any) {
        let url = URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")!
        player = AVPlayer(url: url)
        videoController.player = player
        present(videoController, animated: true) {
            self.player.play()
        }
        
        
        
    }
    
    
    
    
}

