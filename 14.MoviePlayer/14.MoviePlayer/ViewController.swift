//
//  ViewController.swift
//  14.MoviePlayer
//
//  Created by silver j on 2023/01/01.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func btnPlayInternalMovie(_ sender: UIButton) {
        // 내부 파일 mp4
        let filePath:String? = Bundle.main.path(forResource: "1인화로", ofType: "mp4")
        let url = NSURL(fileURLWithPath: filePath!)

        playVideo(url: url)
    }
    
    @IBAction func btnPlayerExternalMovie(_ sender: UIButton) {
        // 외부 파일 mp4
        let url = NSURL(string: "https://dl.dropboxusercontent.com/s/e38auz050w2mvud/Fireworks.mp4")!

        playVideo(url: url)
    }
    
    private func playVideo(url: NSURL)  {
        let playerController = AVPlayerViewController()
        
        let player = AVPlayer(url: url as URL)
        playerController.player = player
        
        self.present(playerController, animated: true) {
            player.play()
        }
    }

}

