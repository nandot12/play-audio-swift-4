//
//  ViewController.swift
//  Play Audio SWIFT 4
//
//  Created by Nando Septian Husni on 3/7/18.
//  Copyright © 2018 imastudio. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    //deklarasi audio player
    var audio : AVAudioPlayer? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        do{
        //tentukan sumber audio
        let sumber = Bundle.main.path(forResource: "audio", ofType: "mp3")
        //include ke audio player
     try  audio = AVAudioPlayer(contentsOf: URL(fileURLWithPath: sumber!))
        }catch{
            
            print("audio error")
            
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func play(_ sender: Any) {
        audio?.play()
        let durasi =  audio?.duration
        let jam = durasi!/3600
        let menit = jam/60
        print(jam)
        print(menit)
    }
    
    @IBAction func pause(_ sender: Any) {
        audio?.pause()
    }
    @IBAction func stop(_ sender: Any) {
        audio?.currentTime = 0
      
        //audio?.stop()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

