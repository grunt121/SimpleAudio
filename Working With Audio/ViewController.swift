//
//  ViewController.swift
//  Working With Audio
//
//  Created by Jamie Garner on 25/05/2016.
//  Copyright © 2016 Jamie Garner. All rights reserved.
//

import UIKit
import AVFoundation //when playing audio use AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer = AVAudioPlayer()
    
    @IBOutlet var slider: UISlider!
    
    @IBAction func play(sender: AnyObject) {
        
       //by adding just player.play here it picks up from where it was
            player.play()
        
    }
    
   
    @IBAction func pause(sender: AnyObject) {
        
        player.pause()
    }
    
    @IBAction func adjustVolume(sender: AnyObject) {
        
        player.volume = slider.value
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        //defined the file path of file
        let audioPath = NSBundle.mainBundle().pathForResource("bach", ofType: "mp3")!
        //then created a new player that plays this music
        
        do {
            
            try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: audioPath))
            
            
        } catch {
            //process error here
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

