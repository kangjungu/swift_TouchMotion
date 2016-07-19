//
//  ViewController.swift
//  TouchMotion
//
//  Created by JHJG on 2016. 7. 18..
//  Copyright © 2016년 KangJungu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var xCoord: UILabel!
    @IBOutlet weak var yCoord: UILabel!
    
    var startPoint:CGPoint?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //사용자가 화면을 처음으로 터치하면  위치정보를 startPoint 인스턴스 변수에 저장하고 사용자에게 좌표를 표시해야한다.
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let theTouch = touches.first{
            startPoint = theTouch.locationInView(self.view)
            let x = startPoint?.x
            let y = startPoint?.y
            
            xCoord.text = ("x = \(x)")
            yCoord.text = ("y = \(y)")
        }
    }
    
    //사용자가 화면에서 손가락을 움직이면 다시 멈출 때까지 touchesMoved 이벤트가 지속적으로 호출된다.
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let theTouch = touches.first{
            startPoint = theTouch.locationInView(self.view)
            let x = startPoint?.x
            let y = startPoint?.y
            
            xCoord.text = ("x = \(x)")
            yCoord.text = ("y = \(y)")
        }
    }
    
    //사용자가 화면에서 손가락을 떼면 퍼스트 리스폰더의 touchesEnded 메서드가 호출된다.
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let theTouch = touches.first{
            startPoint = theTouch.locationInView(self.view)
            let x = startPoint?.x
            let y = startPoint?.y
            
            xCoord.text = ("x = \(x)")
            yCoord.text = ("y = \(y)")
        }
    }
    
}

